# bytenite-dev-cli

Welcome to ByteNite's Dev CLI, the SDK for building apps on ByteNite.

# Bytenite CLI

A guide to installing and using the Bytenite Command Line Interface (CLI).

## Installation

The Bytenite CLI can be installed on Debian-based Linux distributions (Ubuntu, Debian, etc.) using the following commands:

### Step 1: Add the Bytenite repository

```bash
echo "deb [trusted=yes] https://storage.googleapis.com/bytenite-prod-apt-repo/debs ./" | sudo tee /etc/apt/sources.list.d/bytenite.list
```

### Step 2: Update package lists

```bash
sudo apt update
```

### Step 3: Install the Bytenite CLI

```bash
sudo apt install bytenite-cli
```

## Basic Usage

After installation, you can start using the Bytenite CLI directly from your terminal.

### Getting Help

To see all available commands and options:

```bash
bytenite-cli --help
```

## Examples

Here are some common operations you can perform with the Bytenite CLI:

- Check the installed version:
  ```bash
  bytenite-cli --version
  ```

- Initialize a new app:
  ```bash
  bytenite-cli app new [app_name]
  ```

## Troubleshooting

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
   apt search bytenite-cli
   ```

For more information, please visit the website https://docs.bytenite.com/sdk/bytenite-dev-cli.
