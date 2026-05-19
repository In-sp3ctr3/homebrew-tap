cask "clack" do
  version "0.1.0-alpha.6,2026-05-19"
  sha256 "699e363433c0498bf53bf08f659338c631396e6313cd1658c558dd3fc3934ef5"

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
