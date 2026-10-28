# Script para sincronizar todos los archivos de CampusFest a GitHub mediante la API REST de GitHub
param(
    [Parameter(Mandatory=$true)]
    [string]$GitHubToken,
    [string]$RepoOwner = "mono21131",
    [string]$RepoName = "CampusFest",
    [string]$Branch = "main"
)

$baseDir = $PSScriptRoot
$headers = @{
    "Authorization" = "Bearer $GitHubToken"
    "Accept"        = "application/vnd.github.v3+json"
    "User-Agent"    = "CampusFest-Sync-Script"
}

Write-Host "Iniciando sincronizacion con el repositorio $RepoOwner/$RepoName (rama: $Branch)..." -ForegroundColor Cyan

# Obtener los archivos locales a subir
$files = Get-ChildItem -Path $baseDir -Recurse -File | Where-Object { $_.Name -ne "upload_to_github.ps1" -and $_.Name -ne "sync_to_github.ps1" }

foreach ($file in $files) {
    $relativePath = $file.FullName.Substring($baseDir.Length).TrimStart('\', '/').Replace('\', '/')
    Write-Host "Procesando: $relativePath..." -NoNewline

    # Leer contenido y convertir a Base64
    $bytes = [System.IO.File]::ReadAllBytes($file.FullName)
    $base64Content = [System.Convert]::ToBase64String($bytes)

    # Verificar si el archivo ya existe en GitHub para obtener su SHA
    $apiUrl = "https://api.github.com/repos/$RepoOwner/$RepoName/contents/$relativePath?ref=$Branch"
    $existingSha = $null

    try {
        $existingFile = Invoke-RestMethod -Uri $apiUrl -Headers $headers -Method Get -ErrorAction Stop
        $existingSha = $existingFile.sha
    } catch {
        # El archivo no existe todavia, es nuevo
    }

    $bodyObj = @{
        message = "Sincronizar $relativePath desde CampusFest"
        content = $base64Content
        branch  = $Branch
    }
    if ($existingSha) {
        $bodyObj.sha = $existingSha
    }

    $jsonBody = $bodyObj | ConvertTo-Json

    try {
        $putUrl = "https://api.github.com/repos/$RepoOwner/$RepoName/contents/$relativePath"
        $response = Invoke-RestMethod -Uri $putUrl -Headers $headers -Method Put -Body $jsonBody -ContentType "application/json; charset=utf-8"
        Write-Host " [OK]" -ForegroundColor Green
    } catch {
        Write-Host " [ERROR]" -ForegroundColor Red
        Write-Host "Detalle del error: $($_.Exception.Message)" -ForegroundColor Yellow
    }
}

Write-Host "`nProceso completado." -ForegroundColor Green
