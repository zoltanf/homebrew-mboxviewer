cask "mbox-viewer" do
  version "1.6.2605110842"
  sha256 "3487e5aa1ec1b761e210d8a325eac29d5fad20d6a06a101107599f26ce451d8b"
  url "https://github.com/zoltanf/MboxViewer/releases/download/v#{version}/Mbox-Viewer-1.6.2605110842-arm64.dmg"
  depends_on arch: :arm64
  name "Mbox Viewer"
  desc "Desktop viewer for .mbox, .eml, and .pst email archives"
  homepage "https://github.com/zoltanf/MboxViewer"

  app "Mbox Viewer.app"

  caveats do
    <<~EOS
      If macOS blocks the first launch because the build is not notarized yet, remove the quarantine flag:
        sudo xattr -r -d com.apple.quarantine "/Applications/Mbox Viewer.app"
    EOS
  end
end
