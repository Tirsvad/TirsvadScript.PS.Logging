[![downloads][downloads-shield]][downloads-url] [![Contributors][contributors-shield]][contributors-url] [![Forks][forks-shield]][forks-url] [![Stargazers][stars-shield]][stars-url] [![Issues][issues-shield]][issues-url] [![License][license-shield]][license-url] [![LinkedIn][linkedin-shield]][linkedin-url]

# ![Logo][Logo] Logging
PowerShell Logging Module

## Overview
PS.Logging is a PowerShell module designed to facilitate logging in PowerShell scripts and modules.
It provides a simple and flexible way to log messages with different severity levels, making it easier to track and debug script execution.

## Features
- Supports multiple log levels (e.g., Info, Warning, Error)
- Easy integration with existing PowerShell scripts
- Lightweight and fast

## Quick Start

### Download and Install
To install the PS.Logging module, you can use the following PowerShell command:
```powershell
Install-Module -Name PS.Logging -Scope CurrentUser
```
#### Import the Module
After installation, import the module into your PowerShell session:
```powershell
Import-Module PS.Logging
```
#### Basic Usage
You can start logging messages using the `Write-Log` cmdlet. Here are some examples:
```powershell
Write-Header -Message "How to use Logging Examples"
# Log an informational message
Write-Info -Message "This is an informational message."
# Log a warning message
Write-Warn -Message "This is a warning message."
# Log an error message
Write-Err -Message "This is an error message."
```

### Git Repository
You can clone the repository using the following command:
```powershell
git clone https://github.com/TirsvadScript/PS.Logging.git
```

## Testing
The module includes a suite of Pester tests to ensure functionality and reliability. To run the tests, use the following command:
```powershell
try { powershell -NoProfile -NoLogo -Command "Import-Module Pester -ErrorAction SilentlyContinue; Invoke-Pester -Script .\logging.Tests.ps1 -OutputFormat NUnitXml -OutputFile test-results.xml" } finally { if ($?) { echo "bbb6c4dc03844c2986fd1ddfd0ceb545=$?" } else { echo "bbb6c4dc03844c2986fd1ddfd0ceb545=$?" } }
```

## Contributing
Contributions are welcome. Please follow the guidelines in `CONTRIBUTING.md` and open issues or pull requests.

See [CONTRIBUTING.md](CONTRIBUTING.md)

## Reporting Bugs
1. Go to the Issues page: [GitHub Issues][githubIssue-url]
2. Click "New Issue" and provide steps to reproduce, expected behavior, actual behavior, environment, and attachments (logs/screenshots).

## License
Distributed under the AGPL-3.0 License. See [LICENSE.txt](LICENSE.txt) or [license link][license-url].

## Contact
Jens Tirsvad Nielsen - [LinkedIn][linkedin-url]

## Acknowledgments
Thanks to contributors and the open-source community.

<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/TirsvadScript/PS.Logging?style=for-the-badge
[contributors-url]: https://github.com/TirsvadScript/PS.Logging/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/TirsvadScript/PS.Logging?style=for-the-badge
[forks-url]: https://github.com/TirsvadScript/PS.Logging/network/members
[stars-shield]: https://img.shields.io/github/stars/TirsvadScript/PS.Logging?style=for-the-badge
[stars-url]: https://github.com/TirsvadScript/PS.Logging/stargazers
[issues-shield]: https://img.shields.io/github/issues/TirsvadScript/PS.Logging?style=for-the-badge
[issues-url]: https://github.com/TirsvadScript/PS.Logging/issues
[license-shield]: https://img.shields.io/github/license/TirsvadScript/PS.Logging?style=for-the-badge
[license-url]: https://github.com/TirsvadScript/PS.Logging/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/jens-tirsvad-nielsen-13b795b9/
[githubIssue-url]: https://github.com/TirsvadScript/PS.Logging/issues/
[logo]: https://raw.githubusercontent.com/TirsvadScript/PS.Logging/main/images/logo/32x32/logo.png


[downloads-shield]: https://img.shields.io/github/downloads/TirsvadScript/PS.Logging/total?style=for-the-badge
[downloads-url]: https://github.com/TirsvadScript/PS.Logging/releases