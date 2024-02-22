class Testing < Formula
  desc "testing desc"
  homepage "https://github.com/satrik/testing"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  url "https://github.com/satrik/testing/releases/download/0.1/testing.zip"

  app "testing.app"

end


cask "testing" do
  version "0.1"
  sha256 "8c0bac724442f9b15efe820c61d918d1162b8bde1cde96f8c5c90187af098c78"

  url "https://github.com/satrik/testing/releases/download/#{version}/testing.zip"
  name "testing"
  desc "testing desc"
  homepage "https://github.com/satrik/testing"

  livecheck do
    url "https://github.com/satrik/testing/releases/download/#{version}/testing.zip"
    regex(/testing.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :mojave"

  app "testing.app"

end
