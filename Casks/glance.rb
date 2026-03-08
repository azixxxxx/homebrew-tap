cask "glance" do
  version "1.1.0"
  sha256 "816e321feb791af19f7b262106e2207b60513436a188c448f88d204b0bb1d440"

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
