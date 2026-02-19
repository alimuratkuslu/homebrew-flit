cask "flit" do
  version "1.2.0"
  sha256 "cb6aecde38dc67e737e91abd2f9a1fe8f8279348175df3cbc1dc9425611c007f"

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
