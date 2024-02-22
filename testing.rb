# typed: true
# frozen_string_literal: true

class Testing < Formula
  desc "testing desc"
  homepage "https://github.com/satrik/testing"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  url "https://github.com/satrik/testing/releases/download/0.1/testing.zip"

  app "testing.app"

end
