cask "flit" do
  version "1.2.0"
  sha256 "e90dffe022ebd844219f116cd01a5ceb2f279e04122ea646f7d31407acc75f02"

  url "https://github.com/alimuratkuslu/Flit/releases/download/v#{version}/Flit-#{version}.dmg"
  name "Flit"
  desc "Instantly switch to any running app with Option+Number shortcuts"
  homepage "https://github.com/alimuratkuslu/Flit"

  depends_on macos: ">= :ventura"

  app "Flit.app"

  caveats <<~EOS
    After installation, open Flit from /Applications or Spotlight.
    On first launch, grant Accessibility permissions when prompted
    (System Settings > Privacy & Security > Accessibility).
  EOS

  livecheck do
    url :homepage
    strategy :github_latest
  end
end
