Homebrew Tap
===

A collection of Homebrew formulae for command-line tools by [@jaywcjlove](https://github.com/jaywcjlove).

## Available Formulae

| Formula | Description | Version |
|---------|-------------|---------|
| [appi18n](https://github.com/jaywcjlove/app-i18n) | Lightweight CLI tool for unifying and optimizing the internationalization (i18n) workflow | v1.3.0 |
| [sgo](https://github.com/jaywcjlove/sgo-rs) | A simple, fast, and cross-platform static web server with compression and directory listing | v0.6.0 |

## Available Casks

| Cask | Description | Version |
|------|-------------|---------|  
| [vidwall-hub](https://github.com/jaywcjlove/vidwall-hub) | Tool to import videos into system wallpaper service for lock screen animations | v1.6.1 |

## How do I install these formulae?

### Method 1: Direct install

**For command-line tools (formulae):**
```bash
brew install jaywcjlove/tap/<formula>
```

**For GUI apps (casks):**
```bash
brew install --cask jaywcjlove/tap/<cask>
```

### Method 2: Tap first, then install

```bash
brew tap jaywcjlove/tap
brew install <formula>          # for command-line tools
brew install --cask <cask>      # for GUI applications
```

### Method 3: Using Brewfile

```ruby
tap "jaywcjlove/tap"
brew "<formula>"                # for command-line tools
cask "<cask>"                   # for GUI applications
```

## Installation Examples

### Install appi18n

```bash
# Internationalization workflow tool
brew install jaywcjlove/tap/appi18n

# Usage examples
appi18n --help
appi18n --version
```

### Install sgo

```bash
# Static file server
brew install jaywcjlove/tap/sgo

# Usage examples  
sgo                    # Start server on port 3030, serve ./static
sgo -p 8080 -d ./www   # Custom port and directory
sgo --cors             # Enable CORS support
```

### Install vidwall-hub

```bash
# Video wallpaper tool for macOS (GUI app)
brew install --cask jaywcjlove/tap/vidwall-hub
```

The app will be automatically installed to `/Applications/VidwallHub.app` and will appear in:
- Launchpad
- Spotlight search
- Applications folder in Finder

**Usage:**
- Open from Launchpad or Applications folder
- Or use command line: `open -a "VidwallHub"`

## Update and Maintenance

### Update to Latest Version

To get the latest version of any formula:

```bash
# Update tap and all formulae
brew update

# Upgrade specific formula to latest version  
brew upgrade <formula>

# Example: upgrade sgo to latest version
brew upgrade sgo
```

### Reinstall Formula

If you encounter issues or want a clean installation:

```bash
# Method 1: Uninstall and reinstall
brew uninstall <formula>
brew install jaywcjlove/tap/<formula>

# Method 2: Force reinstall
brew reinstall <formula>
brew reinstall jaywcjlove/tap/appi18n

# Example: reinstall sgo
brew uninstall sgo
brew install jaywcjlove/tap/sgo
```

### Check Installed Version

```bash
# List all installed formulae and casks from this tap
brew list | grep -E "(appi18n|sgo)"           # formulae
brew list --cask | grep -E "(vidwall-hub)"    # casks

# Check version of specific tool (if supported)
appi18n --version
sgo --version
```

### Force Update Tap

If you're not seeing the latest versions:

```bash
# Force update this tap specifically
brew tap --force jaywcjlove/tap

# Then update and upgrade
brew update && brew upgrade
```

## How to Add a New Formula

Adding a new command line tool to this tap:

### 1. Create Formula File

Create a new `.rb` file in the `Formula/` directory:

```bash
cd $(brew --repository jaywcjlove/tap)
# Create formula file (replace 'toolname' with your tool name)
touch Formula/toolname.rb
```

### 2. Binary Release Formula Template

For binary releases (recommended):

```ruby
class Toolname < Formula
  desc "Description of your tool"
  homepage "https://github.com/jaywcjlove/your-repo"
  version "x.x.x"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jaywcjlove/your-repo/releases/download/vx.x.x/toolname-x86_64-apple-darwin.zip"
      sha256 "intel_mac_sha256_hash"

      def install
        bin.install "toolname"
      end
    end

    on_arm do
      url "https://github.com/jaywcjlove/your-repo/releases/download/vx.x.x/toolname-aarch64-apple-darwin.zip"
      sha256 "apple_silicon_sha256_hash"

      def install
        bin.install "toolname"
      end
    end
  end

  test do
    assert_match "toolname", shell_output("#{bin}/toolname --help")
  end
end
```

### 3. Get SHA256 Hashes

```bash
# For Intel Mac
curl -L https://github.com/jaywcjlove/your-repo/releases/download/vx.x.x/toolname-x86_64-apple-darwin.zip | shasum -a 256

# For Apple Silicon Mac  
curl -L https://github.com/jaywcjlove/your-repo/releases/download/vx.x.x/toolname-aarch64-apple-darwin.zip | shasum -a 256
```

### 4. Test Formula

```bash
# Test installation
brew install toolname

# Run formula tests
brew test toolname

# Uninstall if needed
brew uninstall toolname
```

### 5. Source Code Formula Template
For tools that need compilation:
```ruby
class Toolname < Formula
  desc "Description of your tool"
  homepage "https://github.com/jaywcjlove/your-repo"
  url "https://github.com/jaywcjlove/your-repo/archive/vx.x.x.tar.gz"
  sha256 "source_archive_sha256_hash"
  license "MIT"

  depends_on "rust" => :build  # Add build dependencies as needed

  def install
    # Build commands specific to your tool
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "toolname", shell_output("#{bin}/toolname --help")
  end
end
```

## Documentation

For more information about Homebrew formulae:
- `brew help`
- `man brew` 
- [Homebrew's documentation](https://docs.brew.sh)
- [Formula Cookbook](https://docs.brew.sh/Formula-Cookbook)
