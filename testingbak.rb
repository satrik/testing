cask "testing" do
    version "0.1"
    sha256 "8c0bac724442f9b15efe820c61d918d1162b8bde1cde96f8c5c90187af098c78"
  
    url "https://github.com/satrik/testing/releases/download/#{version}/testing.zip"
    name "testing"
    desc "testing desc"
    homepage "https://github.com/satrik/testing"
    
    livecheck do
      url :url
      strategy :github_latest
    end
  
    depends_on macos: ">= :mojave"
  
    app "testing.app"
  end
