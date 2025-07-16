# build.ps1

Write-Host "MAYO build tool" -ForegroundColor Cyan
Write-Host "select build type (1-5)" -ForegroundColor Cyan
Write-Host "1. stable"
Write-Host "2. beta"
Write-Host "3. nightly"
Write-Host "4. debug"
Write-Host "5. dev"
Write-Host ""

$choice = Read-Host "Enter your choice (1-5)"

switch ($choice) {
    "1" {
        $env:MAYO_BUILD_TYPE = "release"
        Write-Host "Building Stable..." -ForegroundColor Green
    }
    "2" {
        $env:MAYO_BUILD_TYPE = "beta"
        Write-Host "Building Beta..." -ForegroundColor Yellow
    }
    "3" {
        $env:MAYO_BUILD_TYPE = "nightly"
        Write-Host "Building Nightly..." -ForegroundColor Magenta
    }
    "4" {
        $env:MAYO_BUILD_TYPE = "debug"
        Write-Host "Building Debug..." -ForegroundColor Red
    }
    "5" {
        $env:MAYO_BUILD_TYPE = "internal"
        Write-Host "Building Dev Build..." -ForegroundColor Blue
    }
    Default {
        Write-Host "Invalid choice. Exiting." -ForegroundColor Red
        exit 1
    }
}

Write-Host ""
Write-Host "MAYO_BUILD_TYPE = $env:MAYO_BUILD_TYPE"
Write-Host "Running: pnpm tauri build"
Write-Host ""

pnpm tauri build

Remove-Item Env:\MAYO_BUILD_TYPE
