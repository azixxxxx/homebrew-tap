cask "glance" do
  version "1.2"
  sha256 "61f8831ae47aa8d8bec3f53619a5d68fc53412f2dea1210e5b9dfb896a6d4897"

  url "https://github.com/azixxxxx/glance/releases/download/v#{version}/Glance-#{version}.zip"
  name "Glance"
  desc "Custom macOS status bar with liquid glass UI and native Spaces support"
  homepage "https://github.com/azixxxxx/glance"

  depends_on macos: ">= :ventura"

  app "Glance.app"

  zap trash: [
    "~/.glance-config.toml",
    "~/Library/Preferences/com.azimsukhanov.glance.plist",
  ]
end
