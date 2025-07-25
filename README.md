# action-release-reminder
GitHub Action that displays a release tag reminder in the workflow summary after deployment.

This action displays a fun or professional reminder message using ASCII art after a deployment or release workflow. It supports multiple message styles and automatically outputs the message to the GitHub Actions **job summary** and logs.

## ✨ Features

- ✅ Outputs custom ASCII-style reminders to GitHub Actions job summary  
- ✅ Supports multiple message styles: `cute`, `corporative`, and `scary`  
- ✅ Easy to configure via input parameters  
- ✅ Lightweight and fast (pure bash)

## 📦 Usage

### Basic example

```yaml
    steps:
      - name: Run Release Reminder
        uses: hi-hi-ray/action-release-reminder@v1
        with:
          message_style: corporative
```