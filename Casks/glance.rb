cask "glance" do
  version "1.1.1"
  sha256 "f3a5b454d95bc06ff899df7bd7b39cb2fb9a1780ea42816b7006d69d85a2ea21"

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
