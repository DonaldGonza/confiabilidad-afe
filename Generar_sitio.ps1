param([switch]$VistaPrevia)

$quartoDisponible = Get-Command quarto -ErrorAction SilentlyContinue
if ($quartoDisponible) {
    $quartoEjecutable = $quartoDisponible.Source
} else {
    $quartoRStudio = 'C:\Program Files\RStudio\resources\app\bin\quarto\bin\quarto.exe'
    if (Test-Path -LiteralPath $quartoRStudio) {
        $quartoEjecutable = $quartoRStudio
    } else {
        throw 'No se encontró Quarto. Abre el proyecto en RStudio con Quarto o instala Quarto y vuelve a ejecutar el script.'
    }
}

Push-Location -LiteralPath $PSScriptRoot
try {
    if ($VistaPrevia) {
        & $quartoEjecutable preview .
    } else {
        & $quartoEjecutable render .
    }
    if ($LASTEXITCODE -ne 0) { throw "Quarto terminó con código $LASTEXITCODE." }
    if (-not $VistaPrevia) {
        New-Item -ItemType File -Path (Join-Path $PSScriptRoot "docs\.nojekyll") -Force | Out-Null
    }
} finally {
    Pop-Location
}
