cask "mbox-viewer" do
  version "1.6.2604160534"
  sha256 "b478423a2cd0c0948dad996371515a50f0c355b964091b6f2a40cd705cf80dd2"
  url "https://github.com/zoltanf/MboxViewer/releases/download/v#{version}/Mbox.Viewer-1.6.2604160534-arm64.dmg"
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
