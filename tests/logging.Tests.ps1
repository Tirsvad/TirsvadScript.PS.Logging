# Pester tests for src/logging.ps1
# Requires Pester (commonly preinstalled in PowerShell)

Describe 'Logging.ps1' {
	$scriptPath = Resolve-Path (Join-Path $PSScriptRoot '..\src\logging.ps1')

	It 'defines expected logging functions and defaults VerboseMode to 2 when not set' {
		$job = Start-Job -ScriptBlock {
			param($path)
			. $path
			[PSCustomObject]@{
				VerboseMode = $script:VerboseMode
				Functions   = (Get-Command Write-Info, Write-Ok, Write-Err, Write-Warn, Write-Debug, Write-Run -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Name)
			}
		} -ArgumentList $scriptPath.Path

		$result = $job | Wait-Job | Receive-Job -ErrorAction Stop
		Remove-Job $job -Force

		$result.VerboseMode | Should Be 2
		$expected = 'Write-Info', 'Write-Ok', 'Write-Err', 'Write-Warn', 'Write-Debug', 'Write-Run'
		foreach ($fn in $expected) { ($result.Functions -contains $fn) | Should Be $true }
	}

	It 'respects a caller-set VerboseMode when set before dot-sourcing' {
		$job = Start-Job -ScriptBlock {
			param($path)
			$script:VerboseMode = 4
			. $path
			return $script:VerboseMode
		} -ArgumentList $scriptPath.Path

		$result = $job | Wait-Job | Receive-Job -ErrorAction Stop
		Remove-Job $job -Force

		$result | Should Be 4
	}
}
