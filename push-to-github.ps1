# Script to push repository to GitHub
# Run this script after creating the repository on GitHub

Write-Host "=== Push to GitHub Script ===" -ForegroundColor Green
Write-Host ""

# Get GitHub username
$username = Read-Host "Enter your GitHub username"

# Get repository name (default: ai-economics-research)
$repoName = Read-Host "Enter repository name (default: ai-economics-research)"
if ([string]::IsNullOrWhiteSpace($repoName)) {
    $repoName = "ai-economics-research"
}

Write-Host ""
Write-Host "Choose authentication method:" -ForegroundColor Yellow
Write-Host "1. Personal Access Token (recommended)"
Write-Host "2. SSH (if you have SSH keys set up)"
$choice = Read-Host "Enter choice (1 or 2)"

if ($choice -eq "1") {
    # HTTPS with Personal Access Token
    $remoteUrl = "https://github.com/$username/$repoName.git"
    
    Write-Host ""
    Write-Host "Setting up remote..." -ForegroundColor Cyan
    git remote remove origin 2>$null
    git remote add origin $remoteUrl
    
    Write-Host ""
    Write-Host "Renaming branch to main..." -ForegroundColor Cyan
    git branch -M main
    
    Write-Host ""
    Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
    Write-Host "When prompted for password, use your Personal Access Token (not your GitHub password)" -ForegroundColor Yellow
    Write-Host ""
    
    git push -u origin main
    
} elseif ($choice -eq "2") {
    # SSH
    $remoteUrl = "git@github.com:$username/$repoName.git"
    
    Write-Host ""
    Write-Host "Setting up remote (SSH)..." -ForegroundColor Cyan
    git remote remove origin 2>$null
    git remote add origin $remoteUrl
    
    Write-Host ""
    Write-Host "Renaming branch to main..." -ForegroundColor Cyan
    git branch -M main
    
    Write-Host ""
    Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
    git push -u origin main
    
} else {
    Write-Host "Invalid choice. Exiting." -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Done! Check your repository at: https://github.com/$username/$repoName" -ForegroundColor Green
