class Testing < Formula
  desc "testing desc"
  homepage "https://github.com/satrik/testing"

  depends_on macos: ">= :big_sur"
    
  url "https://github.com/satrik/testing/releases/download/0.1/testing.zip"

  app "testing.app"

end
