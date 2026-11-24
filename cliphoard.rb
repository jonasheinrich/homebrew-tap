cask "cliphoard" do
  version "0.1"
  sha256 "88848f8683ce277b154f79a0eb10f7c5046af4d307b0f87dc9c0fb0f901ab62d"

  url "https://github.com/jonasheinrich/Cliphoard/releases/download/v#{version}/Cliphoard-#{version}.dmg"
  name "Cliphoard"
  desc "Clipboard history for text"
  homepage "https://github.com/jonasheinrich/Cliphoard"

  depends_on macos: :sequoia

  app "Cliphoard.app"

  zap trash: [
    "~/Library/Application Support/dev.local.Cliphoard",
    "~/Library/Preferences/dev.local.Cliphoard.plist",
  ]

  caveats <<~EOS
    Cliphoard isn't notarized by Apple yet, so macOS blocks its first launch.
    Open System Settings > Privacy & Security and click "Open Anyway".
  EOS
end
