cask "clack" do
  version "0.1.0-alpha.10,2026-05-20"
  sha256 "4f2a6bd2c6f951ce1c6570fd04c79329486151744fb39cf03382ee293ab815bf"

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
