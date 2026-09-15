param (
    [string]$message = "Update system and content"
)

$gitDir = 'C:\Users\User\.git_portable\cmd'
$ghDir = 'C:\Users\User\.git_portable\gh\bin'
$env:Path = "$gitDir;$ghDir;" + $env:Path

Set-Location 'c:\Users\User\Documents\AP app'

Write-Host "Staging all changes..."
& "$gitDir\git.exe" add .

Write-Host "Committing with message: $message"
& "$gitDir\git.exe" commit -m "$message"

Write-Host "Pushing to GitHub (main)..."
& "$gitDir\git.exe" push origin main

Write-Host "Pushed to GitHub successfully! Vercel will auto-deploy in 15 seconds."
