# Warp Dark Theme - PowerShell Profile

# Requires JetBrains Mono or Fira Code font
$env:EDITOR = "code"
$env:VISUAL = "code"

# Terminal prompt colors
$Host.UI.RawUI.WindowTitle = "PowerShell 7"
$Host.UI.RawUI.BackgroundColor = "Black"
$Host.UI.RawUI.ForegroundColor = "White"

# Aliases
Set-Alias -Name ll -Value Get-ChildItem
Set-Alias -Name la -Value Get-ChildItem -Option AllScope
Set-Alias -Name which -Value Get-Command

# Functions
function which ($command) {
    Get-Command $command -ErrorAction SilentlyContinue |
        Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function ff($name) {
    Get-ChildItem -Recurse -Filter "*$name*" -ErrorAction SilentlyContinue |
        ForEach-Object { $_.FullName }
}

function gac {
    git add -A
    git commit -m "$args"
}

function gst {
    git status
}

function gco {
    git checkout $args
}

function gl {
    git log --oneline -10
}

function gd {
    git diff $args
}

function gps {
    git push
}

function gpl {
    git pull
}

function mkcd($path) {
    New-Item -ItemType Directory -Path $path -Force
    Set-Location $path
}

function backup($file) {
    Copy-Item $file "$file.bak-$(Get-Date -Format 'yyyyMMdd-HHmmss')"
}

function watch($command, $interval = 2) {
    while ($true) {
        Clear-Host
        Invoke-Expression $command
        Start-Sleep -Seconds $interval
    }
}

# Oh-My-Posh prompt
if (Get-Command oh-my-posh -ErrorAction SilentlyContinue) {
    oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/warp-dark.omp.json" | Invoke-Expression
}

# PSReadLine settings
if (Get-Module -ListAvailable -Name PSReadLine) {
    Import-Module PSReadLine
    
    Set-PSReadLineOption -EditMode Windows
    Set-PSReadLineOption -HistorySearchCursorMovementToEnd
    Set-PSReadLineOption -HistorySaveCWD
    Set-PSReadLineOption -PredictionSource History
    Set-PSReadLineOption -PredictionViewStyle ListView
    Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
    Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
    Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
    Set-PSReadLineKeyHandler -Key Ctrl+LeftArrow -Function ShellBackwardWord
    Set-PSReadLineKeyHandler -Key Ctrl+RightArrow -Function ShellForwardWord
    Set-PSReadLineKeyHandler -Key Ctrl+Delete -Function ShellForwardKillWord
    Set-PSReadLineKeyHandler -Key Alt+d -Function ShellBackwardKillWord
}

# Starship prompt
if (Get-Command starship -ErrorAction SilentlyContinue) {
    Invoke-Expression (& starship init pwsh --cache-dir $env:TEMP)
}

# Zoxide integration
if (Get-Command zoxide -ErrorAction SilentlyContinue) {
    Invoke-Expression (& zoxide init pwsh | Out-String)
}

# FZF integration
if (Get-Command fzf -ErrorAction SilentlyContinue) {
    $env:FZF_DEFAULT_OPTS = '--color=bg:#000000,fg:#ffffff,hl:#00c2ff,fg+:#ffffff,bg+:#111111,hl+:#00c2ff --color=info:#a5d5fe,prompt:#00c2ff,pointer:#ff8ffd --color=marker:#b4fa72,spinner:#ff8ffd,header:#808080'
}

# Docker completion
if (Get-Command docker -ErrorAction SilentlyContinue) {
    Import-Module DockerCompletion -ErrorAction SilentlyContinue
}

# Enable colors
$PSDefaultParameterValues["Write-Host:ForegroundColor"] = "White"

# Custom prompt
function prompt {
    $user = [System.Environment]::UserName
    $hostObj = $host.UI.RawUI
    $location = Get-Location
    $gitStatus = ""
    
    if (Get-Command git -ErrorAction SilentlyContinue) {
        $gitBranch = git rev-parse --abbrev-ref HEAD 2>$null
        if ($LASTEXITCODE -eq 0 -and $gitBranch) {
            $gitStatus = " $([char]0xE0A0) $gitBranch"
        }
    }
    
    $cyan = [char]27 + "[36m"
    $green = [char]27 + "[32m"
    $white = [char]27 + "[0m"
    $bg = [char]27 + "[48;5;234m"
    
    "$bg$cyan$user$green@$location$gitStatus$white$bg > $white"
}

# Clear on start
Clear-Host

# Welcome message
Write-Host ""
Write-Host "  $([char]0x1B)[36m$([char]0x1B)[1mWarp Dark PowerShell$([char]0x1B)[0m" -ForegroundColor Cyan
Write-Host "  Loaded: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -ForegroundColor DarkGray
Write-Host ""
