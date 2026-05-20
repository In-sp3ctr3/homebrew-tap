cask "clack" do
  version "0.1.0-alpha.9,2026-05-20"
  sha256 "af0f9647c33870543f5935ca73c16e2d0bdfbb4cbfc6053c8c445ff65ebd6aec"

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
