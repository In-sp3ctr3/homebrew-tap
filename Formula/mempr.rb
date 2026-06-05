class Mempr < Formula
  desc "Pull requests for AI memory"
  homepage "https://github.com/In-sp3ctr3/memPR"
  url "https://github.com/In-sp3ctr3/memPR/releases/download/v1.0.0/mempr-1.0.0.tgz"
  sha256 "93a90e77ab9f01624802ad22d13988188964854bfb3531ac3832b6ea6148bc6a"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/mempr"
    bin.install_symlink libexec/"bin/mempr-mcp"
    bin.install_symlink libexec/"bin/mempr-mcp-http"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/mempr")
  end
end
