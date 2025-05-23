# bytenite-dev-cli

Welcome to ByteNite's Dev CLI, the SDK for building apps on ByteNite.

# Bytenite CLI

A guide to installing and using the Bytenite Command Line Interface (CLI).

## Installation

### Linux

The Bytenite CLI can be installed on Debian-based Linux distributions (Ubuntu, Debian, etc.) using the following commands:

Add the Bytenite repository

```bash
echo "deb [trusted=yes] https://storage.googleapis.com/bytenite-prod-apt-repo/debs ./" | sudo tee /etc/apt/sources.list.d/bytenite.list
```
Update package lists

```bash
sudo apt update
```
Install the Bytenite CLI

```bash
sudo apt install bytenite
```
Troubleshooting

If you encounter any issues during installation:

1. Make sure your system is up-to-date:
   ```bash
   sudo apt update && sudo apt upgrade
   ```

2. Verify the repository was correctly added:
   ```bash
   cat /etc/apt/sources.list.d/bytenite.list
   ```

3. Check if the package is available:
   ```bash
   apt search bytenite
   ```

For MacOS Users.

### Mac

Add the Bytenite Tap
```bash
brew tap ByteNite2/bytenite-dev-cli https://github.com/ByteNite2/bytenite-dev-cli.git
```

Install the CLI
```
brew install bytenite
```

## Examples

Here are some common operations you can perform with the Bytenite CLI:

- Check the installed version:
  ```bash
  bytenite --version
  ```

- Initialize a new app:
  ```bash
  bytenite app new [app_name]
  ```



For more information, please visit the documentation https://docs.bytenite.com/sdk/bytenite-dev-cli.
