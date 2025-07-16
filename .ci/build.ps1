Write-Host "mayo build tool (non-interactive)" -ForegroundColor Cyan

$BUILD_TYPE = $env:MAYO_BUILD_TYPE
if (-not $BUILD_TYPE) {
    $BUILD_TYPE = "release"
}

switch ($BUILD_TYPE) {
    "release"  { Write-Host "Building Stable..." -ForegroundColor Green }
    "beta"     { Write-Host "Building Beta..." -ForegroundColor Yellow }
    "nightly"  { Write-Host "Building Nightly..." -ForegroundColor Magenta }
    "debug"    { Write-Host "Building Debug..." -ForegroundColor Red }
    "internal" { Write-Host "Building Dev Build..." -ForegroundColor Blue }
    default {
        Write-Host "Invalid MAYO_BUILD_TYPE: $BUILD_TYPE" -ForegroundColor Red
        exit 1
    }
}

Write-Host ""
Write-Host "MAYO_BUILD_TYPE = $BUILD_TYPE"
Write-Host "Running: pnpm tauri build"
Write-Host ""

pnpm tauri build

Remove-Item Env:\MAYO_BUILD_TYPE -ErrorAction SilentlyContinue
