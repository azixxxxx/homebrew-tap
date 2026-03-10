cask "glance" do
  version "1.1.2"
  sha256 "79b2daaa287b0e3229450d630e1a62b89d6775b06b2ef2fb1fa5adad43a0846e"

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
