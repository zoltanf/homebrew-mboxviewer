# Mbox Viewer Homebrew Tap

Install the app with:

```bash
brew tap zoltanf/homebrew-mboxviewer
brew install --cask mbox-viewer
```

If macOS blocks the first launch because the build is not notarized yet, remove the quarantine flag:

```bash
sudo xattr -r -d com.apple.quarantine "/Applications/Mbox Viewer.app"
```

Artifacts are published from https://github.com/zoltanf/MboxViewer.
