cask "space" do
  version "1.0.1"

  on_arm do
    sha256 "303139a5c999b1382f22bc47b09494528a6b197d086646605ead9a9d3bcb1f22"
    url "https://github.com/tuyoleni/space/releases/download/v#{version}/space-darwin-arm64.zip"
  end

  on_intel do
    sha256 "5f8fc5e1372539766e0ae47280f6658a52cada7cc70c6fe1014f1a481e19d799"
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
