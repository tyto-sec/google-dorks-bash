# Google Dorks Script

This script performs Google Dorking queries for a specified domain, opening search results in Firefox to find sensitive or useful information on the target website. The script automates searches on Google for exposed files, indexes, subdomains, and more.

## Features

- Searches various platforms (e.g., Pastebin, GitHub) for potential leaks.
- Finds exposed files with common file extensions on the target domain.
- Locates directory indexes and subdomains.

## Prerequisites

- **Firefox**: The script uses Firefox to open search results. Make sure it's installed on your system.
- **Bash Shell**: The script is written in Bash, so it should be run on Unix-like systems (Linux, macOS).

## Usage

Run the script with the target domain as an argument:

```bash
./google_dorks.sh <domain.com>
```

## Search Types

The script performs the following Google searches:

1. **Pastebin Search**: Finds any mentions of the domain on Pastebin.
2. **GitHub Search**: Searches for the domain on GitHub to identify code or configuration leaks.
3. **File Search**: Looks for common file types (`php`, `asp`, `txt`, `pdf`, `doc`, `xls`, `xlsx`, `ovpn`, `sql`, `bak`, `log`) on the domain.
4. **Index Page Search**: Finds directories with index pages.
5. **Subdomains Search**: Searches for subdomains of the target domain.
6. **Non-HTML Search**: Finds files on the domain that aren't HTML.

## Notes

- **Privacy**: Ensure you have authorization before running this script on domains you don't own.
- **Google Rate Limiting**: Excessive queries may trigger Google’s rate limiting. Use responsibly.

## Author

Written by tyto.
