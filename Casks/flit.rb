cask "flit" do
  version "1.1.0"
  sha256 "3153c9088478ede0f2593c6141cfe1fa8928007a88a2f07387cde8a451198f8a"

  url "https://github.com/alimuratkuslu/Flit/releases/download/v#{version}/Flit-#{version}.dmg"
  name "Flit"
  desc "Instantly switch to any running app with Option+Number shortcuts"
  homepage "https://github.com/alimuratkuslu/Flit"

  depends_on macos: ">= :ventura"

  app "Flit.app"

  postflight do
    # Grant Accessibility permission prompt on first launch
    system_command "/usr/bin/open", args: ["-a", "Flit"]
  end

  livecheck do
    url :homepage
    strategy :github_latest
  end
end
