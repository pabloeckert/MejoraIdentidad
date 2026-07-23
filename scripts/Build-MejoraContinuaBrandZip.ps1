$ErrorActionPreference = "Stop"
Add-Type -AssemblyName System.IO.Compression

$RepoRoot = Split-Path -Parent $PSScriptRoot
Set-Location $RepoRoot

$Stage = Join-Path $env:TEMP ("mcb_build_" + [guid]::NewGuid())
$StageFolder = Join-Path $Stage "mejora-continua-brand"
New-Item -ItemType Directory -Path $StageFolder -Force | Out-Null

Copy-Item "SKILL.md" (Join-Path $StageFolder "SKILL.md")
Copy-Item "mejora-continua-brand\assets" (Join-Path $StageFolder "assets") -Recurse
Copy-Item "mejora-continua-brand\referencias" (Join-Path $StageFolder "referencias") -Recurse

$ZipPath = Join-Path $RepoRoot "mejora-continua-brand.zip"
if (Test-Path $ZipPath) { Remove-Item $ZipPath }

$zipStream = [System.IO.File]::Open($ZipPath, [System.IO.FileMode]::Create)
$archive = New-Object System.IO.Compression.ZipArchive($zipStream, [System.IO.Compression.ZipArchiveMode]::Create)

$files = Get-ChildItem -Path $Stage -Recurse -File
foreach ($file in $files) {
    $relativePath = $file.FullName.Substring($Stage.Length + 1) -replace '\\', '/'
    $entry = $archive.CreateEntry($relativePath, [System.IO.Compression.CompressionLevel]::Optimal)
    $entryStream = $entry.Open()
    $fileStream = [System.IO.File]::OpenRead($file.FullName)
    $fileStream.CopyTo($entryStream)
    $fileStream.Close()
    $entryStream.Close()
}

$archive.Dispose()
$zipStream.Close()

Remove-Item $Stage -Recurse -Force
Write-Output "mejora-continua-brand.zip regenerado con estructura instalable (carpeta unica + SKILL.md adentro, separadores / correctos, construido a mano entrada por entrada)"
