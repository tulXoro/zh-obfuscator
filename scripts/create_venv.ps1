<#
Creates a .venv in the project root (if missing), installs requirements if present,
and prints instructions how to activate the environment.
#>
param(
    [string]$VenvPath = ".\.venv",
    [switch]$InstallRequirements
)

Write-Host "Project venv path: $VenvPath"

if (-not (Test-Path $VenvPath)) {
    Write-Host "Creating virtual environment..."
    # Use `py -3` if available, otherwise fallback to `python`.
    if (Get-Command py -ErrorAction SilentlyContinue) {
        py -3 -m venv $VenvPath
    } else {
        python -m venv $VenvPath
    }
} else {
    Write-Host "Virtual environment already exists at $VenvPath"
}

$req = Join-Path -Path (Get-Location) -ChildPath 'requirements.txt'
if ($InstallRequirements -or (Test-Path $req)) {
    Write-Host "Installing requirements (if any)..."
    & "$VenvPath\Scripts\python.exe" -m pip install --upgrade pip
    if (Test-Path $req) {
        & "$VenvPath\Scripts\python.exe" -m pip install -r $req
    } else {
        Write-Host "No requirements.txt found in project root. Skipping package install."
    }
}

Write-Host "\nTo activate in PowerShell run:" -ForegroundColor Green
Write-Host "    .\$VenvPath\Scripts\Activate.ps1" -ForegroundColor Yellow
Write-Host "Or in cmd.exe:" -ForegroundColor Green
Write-Host "    .\$VenvPath\Scripts\activate.bat" -ForegroundColor Yellow
