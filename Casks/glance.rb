cask "glance" do
  version "1.0.0"
  sha256 "d3efd436e4ac9b01191dc185614d90ce8e7b51822f1b306faf9c2aaf47d1fed6"

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
