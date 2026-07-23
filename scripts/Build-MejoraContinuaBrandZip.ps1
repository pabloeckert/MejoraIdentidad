$ErrorActionPreference = "Stop"
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
Compress-Archive -Path $StageFolder -DestinationPath $ZipPath
Remove-Item $Stage -Recurse -Force
Write-Output "mejora-continua-brand.zip regenerado con estructura instalable (carpeta unica + SKILL.md adentro)"
