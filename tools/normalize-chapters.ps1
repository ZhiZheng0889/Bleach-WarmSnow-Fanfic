param(
    [Parameter(Mandatory=$true)]
    [string]$ArcDir
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Get-NavLine {
    param(
        [string[]]$Files,
        [int]$Index
    )

    $prev = if ($Index -gt 0) { $Files[$Index - 1] } else { $null }
    $next = if ($Index -lt ($Files.Length - 1)) { $Files[$Index + 1] } else { $null }

    if ($null -ne $prev -and $null -ne $next) {
        return "[← Previous]($prev) | [Next →]($next)"
    }
    if ($null -ne $prev) {
        return "[← Previous]($prev)"
    }
    if ($null -ne $next) {
        return "[Next →]($next)"
    }

    return $null
}

function Ensure-NavAndCharacters {
    param(
        [string]$FilePath,
        [string]$NavLine
    )

    $content = Get-Content -LiteralPath $FilePath -Raw

    if ($content -notmatch "(?m)^# ") {
        Write-Warning "Skipping (no H1): $FilePath"
        return
    }

    $lines = $content -split "`r?`n", -1

    # Insert navigation line right after the H1 title (allowing blank lines), unless already present.
    $h1Index = ($lines | Select-String -Pattern "^# " -List).LineNumber
    if ($null -eq $h1Index) {
        Write-Warning "Skipping (can't locate H1): $FilePath"
        return
    }
    $h1Index = $h1Index - 1

    $alreadyHasNav = $false
    $scanIndex = $h1Index + 1
    while ($scanIndex -lt $lines.Length -and $lines[$scanIndex].Trim() -eq "") {
        $scanIndex++
    }
    if ($scanIndex -lt $lines.Length) {
        $alreadyHasNav = ($lines[$scanIndex] -match "\[← Previous\]" -or $lines[$scanIndex] -match "\[Next →\]")
    }

    if (-not $alreadyHasNav -and $null -ne $NavLine) {
        $newLines = @()
        $newLines += $lines[0..$h1Index]
        $newLines += ""
        $newLines += $NavLine
        $newLines += ""
        $newLines += $lines[($h1Index + 1)..($lines.Length - 1)]
        $lines = $newLines
    }

    $updated = $lines -join "`r`n"

    # Ensure Characters section exists (skip if already present).
    if ($updated -notmatch "(?m)^## Characters\s*$") {
        # Insert before first Scene heading.
        $sceneMatch = [regex]::Match($updated, "(?m)^## Scene\s+\d+\s*$")
        if ($sceneMatch.Success) {
            $insertAt = $sceneMatch.Index
            $charactersBlock = @(
                "## Characters",
                "",
                "- **Introduced / First appearance**:",
                "- **Returning**:",
                "- **Changes (status / power / gear / role)**:",
                "- **Relationships / allegiances**:",
                "",
                ""
            ) -join "`r`n"

            $updated = $updated.Substring(0, $insertAt) + $charactersBlock + $updated.Substring($insertAt)
        }
    }

    # Normalize trailing whitespace lightly.
    $updated = ($updated -replace "[ \t]+(?=\r?\n)", "")

    if ($updated -ne $content) {
        Set-Content -LiteralPath $FilePath -Value $updated -NoNewline
        Write-Host "Updated: $FilePath"
    }
}

$arcFullPath = Resolve-Path -LiteralPath $ArcDir

# Only operate on chapter-like files (e.g. 00-prologue.md, 01-chapter-1.md, 42-transition-1.md).
# This intentionally skips arc-level README files.
$files = Get-ChildItem -LiteralPath $arcFullPath -Filter "*.md" |
    Where-Object { $_.Name -match '^\d{2}-' } |
    Sort-Object Name |
    Select-Object -ExpandProperty Name

if ($files.Count -eq 0) {
    Write-Host "No chapter files found under $arcFullPath (skipping)."
    exit 0
}

for ($i = 0; $i -lt $files.Length; $i++) {
    $fileName = $files[$i]
    $filePath = Join-Path $arcFullPath $fileName
    $nav = Get-NavLine -Files $files -Index $i
    Ensure-NavAndCharacters -FilePath $filePath -NavLine $nav
}
