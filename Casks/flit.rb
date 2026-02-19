cask "flit" do
  version "1.1.1"
  sha256 "840eb0b23f22a2a6ef5a4d657dc0128cb01906fb68989e4eb8cd03e83fd4decd"

  url "https://github.com/alimuratkuslu/Flit/releases/download/v#{version}/Flit-#{version}.dmg"
  name "Flit"
  desc "Instantly switch to any running app with Option+Number shortcuts"
  homepage "https://github.com/alimuratkuslu/Flit"

  depends_on macos: ">= :ventura"

  app "Flit.app"

  livecheck do
    url :homepage
    strategy :github_latest
  end
end
