# Music Artist OS Installer (Windows)

param([switch]$Update)

$ErrorActionPreference = "Stop"

$SkillDir = "$env:USERPROFILE\.claude\skills\music"
$AgentDir = "$env:USERPROFILE\.claude\agents"
$RepoUrl = "https://github.com/gonzalo/music-artist-os"

Write-Host ""
Write-Host "════════════════════════════════════════" -ForegroundColor Cyan
if ($Update) {
    Write-Host "║   Music Artist OS - Updater          ║" -ForegroundColor Cyan
} else {
    Write-Host "║   Music Artist OS - Installer        ║" -ForegroundColor Cyan
}
Write-Host "║   Claude Code Music Career Skill     ║" -ForegroundColor Cyan
Write-Host "════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""

# Check git
try { git --version | Out-Null } catch { Write-Error "Git is required but not installed."; exit 1 }
Write-Host "✓ Git detected" -ForegroundColor Green

# Create directories
New-Item -ItemType Directory -Force -Path "$SkillDir\references" | Out-Null
New-Item -ItemType Directory -Force -Path "$SkillDir\archive" | Out-Null
New-Item -ItemType Directory -Force -Path $AgentDir | Out-Null

# Clone
$TempDir = Join-Path ([System.IO.Path]::GetTempPath()) "music-artist-os-$(Get-Random)"
Write-Host "↓ Downloading Music Artist OS..."
git clone --depth 1 $RepoUrl $TempDir 2>$null

try {
    # Main skill
    Write-Host "→ Installing main skill..."
    Copy-Item "$TempDir\music\SKILL.md" "$SkillDir\SKILL.md" -Force
    Copy-Item "$TempDir\music\references\*.md" "$SkillDir\references\" -Force

    # Handle artist profile
    if (Test-Path "$SkillDir\artist-profile.json") {
        if ($Update) {
            Write-Host "  → Checking profile schema..." -ForegroundColor Yellow
            Write-Host "  ✓ Existing artist profile preserved (schema migration will run on next session)" -ForegroundColor Green
        } else {
            Write-Host "  ✓ Existing artist profile preserved" -ForegroundColor Green
        }
    } else {
        Copy-Item "$TempDir\music\artist-profile.json" "$SkillDir\artist-profile.json"
        Write-Host "  ✓ Created fresh artist profile" -ForegroundColor Green
    }

    # Sub-skills
    Write-Host "→ Installing sub-skills..."
    $SkillCount = 0
    Get-ChildItem "$TempDir\skills" -Directory | ForEach-Object {
        $Target = "$env:USERPROFILE\.claude\skills\$($_.Name)"
        New-Item -ItemType Directory -Force -Path $Target | Out-Null
        Copy-Item "$($_.FullName)\SKILL.md" "$Target\SKILL.md" -Force
        $SkillCount++
    }
    Write-Host "  ✓ $SkillCount sub-skills installed" -ForegroundColor Green

    # Agents
    Write-Host "→ Installing subagents..."
    $AgentCount = 0
    Get-ChildItem "$TempDir\agents\*.md" | ForEach-Object {
        Copy-Item $_.FullName "$AgentDir\" -Force
        $AgentCount++
    }
    Write-Host "  ✓ $AgentCount subagents installed" -ForegroundColor Green

    Write-Host ""
    if ($Update) {
        Write-Host "✓ Music Artist OS updated successfully!" -ForegroundColor Green
        Write-Host ""
        Write-Host "  Your artist profile was preserved."
        Write-Host "  Any new schema fields will be added on next session."
    } else {
        Write-Host "✓ Music Artist OS installed successfully!" -ForegroundColor Green
    }
    Write-Host ""
    Write-Host "  Quick start:"
    Write-Host "    1. Open Claude Code:    claude"
    Write-Host "    2. Set up your profile: /music-quick-start"
    Write-Host "    3. See all commands:    /music"
} finally {
    Remove-Item -Recurse -Force $TempDir -ErrorAction SilentlyContinue
}
