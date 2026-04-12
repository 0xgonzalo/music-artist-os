# Music Artist OS Uninstaller (Windows)

$SkillDir = "$env:USERPROFILE\.claude\skills"
$AgentDir = "$env:USERPROFILE\.claude\agents"

Write-Host ""
Write-Host "════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "║   Music Artist OS - Uninstaller      ║" -ForegroundColor Cyan
Write-Host "════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""

if (Test-Path "$SkillDir\music\artist-profile.json") {
    try {
        $Keep = Read-Host "Keep your artist profile data? (y/n)"
    } catch {
        # Non-interactive mode — default to keeping profile
        Write-Host "  Non-interactive mode detected. Backing up profile by default." -ForegroundColor Yellow
        $Keep = "y"
    }
    if ($Keep -eq "y") {
        Copy-Item "$SkillDir\music\artist-profile.json" "$env:USERPROFILE\artist-profile-backup.json"
        Write-Host "  ✓ Profile saved to ~/artist-profile-backup.json" -ForegroundColor Green
    }
}

Remove-Item -Recurse -Force "$SkillDir\music" -ErrorAction SilentlyContinue

$Skills = @("music-quick-start","music-content","music-releases","music-finances","music-live","music-sync","music-merch","music-press","music-fans","music-analytics","music-identity","music-session-log","music-collabs","music-comms","music-legal","music-sustainability","music-weekly-review")
$Removed = 0
foreach ($s in $Skills) {
    if (Test-Path "$SkillDir\$s") { Remove-Item -Recurse -Force "$SkillDir\$s"; $Removed++ }
}
Write-Host "  ✓ Removed $Removed sub-skills" -ForegroundColor Green

$Agents = @("audit-royalties","audit-content","audit-release","audit-catalog","audit-press")
$AgentsRemoved = 0
foreach ($a in $Agents) {
    if (Test-Path "$AgentDir\$a.md") { Remove-Item -Force "$AgentDir\$a.md"; $AgentsRemoved++ }
}
Write-Host "  ✓ Removed $AgentsRemoved subagents" -ForegroundColor Green

Write-Host ""
Write-Host "✓ Music Artist OS uninstalled." -ForegroundColor Green
