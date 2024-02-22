cask "testing" do
    version "0.1"
    url "https://github.com/satrik/testing/releases/download/0.1/testing.zip"
    name "testing"
    desc "testing desc"
    homepage "https://github.com/satrik/testing"
    depends_on macos: ">= :big_sur"
  
    app "testing.app"
  end
