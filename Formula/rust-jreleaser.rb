# Generated with JReleaser 1.2.0 at 2022-10-08T13:54:17.311799615Z
class RustJreleaser < Formula
  desc "A very, very simple Hello World application written in Rust"
  homepage ""
  url "https://github.com/dirien/rust-jreleaser/releases/download/v0.1.0/rust-jreleaser-0.1.0-darwin-amd64.zip"
  version "0.1.0"
  sha256 "a29e543c276a41c85c57285a8c21dacfef84fb0ff2dbd74cf18b09c3d8f0222e"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rust-jreleaser" => "rust-jreleaser"
  end

  test do
    output = shell_output("#{bin}/rust-jreleaser --version")
    assert_match "0.1.0", output
  end
end
