cask "clack" do
  version "0.1.0-alpha.7,2026-05-19"
  sha256 "17a6c93c336d795fd8bd4ff2c09b77074bd9b0ed5de80cb17f08e09cb2e03618"

  url "https://github.com/In-sp3ctr3/clack/releases/download/v#{version.csv.first}/Clack-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Clack"
  desc "Native macOS clipboard history app"
  homepage "https://github.com/In-sp3ctr3/clack"

  livecheck do
    skip "Alpha builds are updated manually in this tap."
  end

  depends_on macos: ">= :ventura"

  app "Clack.app"

  uninstall quit: "com.jadanjones.Clack"

  zap trash: [
    "~/Library/Application Support/Clack",
    "~/Library/Preferences/com.jadanjones.Clack.plist",
  ]

  caveats <<~EOS
    Clack alpha builds are unsigned and not notarized yet. macOS may warn before opening the app.
  EOS
end
