# Sync-OneDriveBackup.ps1
$RepoRoot = "C:\Github\Herramientas\MejoraIdentidad"
$OneDriveRoot = $env:OneDrive
if (-not $OneDriveRoot) { $OneDriveRoot = "C:\Users\Pablo\OneDrive" }

$MejoraContinuaRoot = Join-Path $OneDriveRoot "MEJORA CONTINUA"
$CarpetaMaterial = Get-ChildItem -Path $MejoraContinuaRoot -Directory -ErrorAction SilentlyContinue |
    Where-Object { $_.Name -like "6. Material Gr*fico" } | Select-Object -First 1

if (-not $CarpetaMaterial) {
    Write-Output "ERROR: no encontre la carpeta '6. Material Gr*fico' dentro de $MejoraContinuaRoot"
    exit 1
}

$Target = Join-Path $CarpetaMaterial.FullName "16-Manual de Identidad de Marca Mejora Continua\2026"

robocopy $RepoRoot $Target /MIR /XD ".git" "_ProjectKnowledge" /R:2 /W:5 /NFL /NDL /NP
Write-Output "robocopy exit code: $LASTEXITCODE (0-7 = OK, 8+ = hubo error)"
Write-Output "Destino usado: $Target"
