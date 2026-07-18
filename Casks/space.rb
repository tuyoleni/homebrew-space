cask "space" do
  version "1.0.0"

  on_arm do
    sha256 "b1f203e85aec42265161b52f6f226e79af7956bbe1aa1e95d6edb3d395c6d2bc"
    url "https://github.com/tuyoleni/space/releases/download/v#{version}/space-darwin-arm64.zip"
  end

  on_intel do
    sha256 "1955fd81f10914ce10b1f5a382d6e5e904224c2b94733e422638a550c9c42ae3"
    url "https://github.com/tuyoleni/space/releases/download/v#{version}/space-darwin-x64.zip"
  end

  name "Space"
  desc "Desktop app for workspace, Git, GitHub, terminal, and project management"
  homepage "https://github.com/tuyoleni/space"

  auto_updates false
  depends_on macos: :sonoma

  app "Space.app"

  zap trash: [
    "~/Library/Application Support/Space",
    "~/Library/Preferences/com.tuyoleni.space.plist",
    "~/Library/Saved Application State/com.tuyoleni.space.savedState",
  ]
end
