cask "flit" do
  version "1.3.0"
  sha256 "fb31637b7179a5c5b8ed82b494d354598289619ab52046a221d8fd6716781931"

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
