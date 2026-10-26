cask "daakseva" do
  version "2.0.0"
  sha256 "d55bd5017c99e8bc625874fa5ecb73e5931cabf2311660fcacee509d07abb0ef"

  url "https://github.com/yashsaxena/daakseva-releases/releases/download/v#{version}/Daakseva-#{version}-arm64.dmg"
  name "Daakseva"
  desc "Tray-first email client"
  homepage "https://github.com/yashsaxena/daakseva-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Daakseva.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Daakseva_*.plist",
    "~/Library/Application Support/Daakseva",
    "~/Library/Caches/com.novosapiens.daakseva",
    "~/Library/Caches/com.novosapiens.daakseva.ShipIt",
    "~/Library/HTTPStorages/com.novosapiens.daakseva",
    "~/Library/HTTPStorages/com.novosapiens.daakseva.binarycookies",
    "~/Library/Logs/Daakseva",
    "~/Library/Logs/DiagnosticReports/Daakseva-*.ips",
    "~/Library/Preferences/com.novosapiens.daakseva.plist",
    "~/Library/Saved Application State/com.novosapiens.daakseva.savedState",
  ]
end
