# Generated with JReleaser 1.2.0 at 2022-10-08T14:01:38.541053881Z
class RustJreleaser < Formula
  desc "A very, very simple Hello World application written in Rust"
  homepage ""
  url "https://github.com/dirien/rust-jreleaser/releases/download/v0.1.2/rust-jreleaser-0.1.2-darwin-amd64.zip"
  version "0.1.2"
  sha256 "f7563dfc907db81c88c1aa949d6c8bc93940cc5c06a76c8720fbefac74c74fb3"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rust-jreleaser" => "rust-jreleaser"
  end

  test do
    output = shell_output("#{bin}/rust-jreleaser --version")
    assert_match "0.1.2", output
  end
end
