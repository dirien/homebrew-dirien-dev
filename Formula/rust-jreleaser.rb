# Generated with JReleaser 1.2.0 at 2022-10-08T14:05:22.652619983Z
class RustJreleaser < Formula
  desc "A very, very simple Hello World application written in Rust"
  homepage ""
  url "https://github.com/dirien/rust-jreleaser/releases/download/v0.1.2/rust-jreleaser-0.1.2-darwin-amd64.zip"
  version "0.1.2"
  sha256 "3418395439e55b487d4c402481aa526616ae6e7125d6e3d3a2f3147d3c94b3d9"
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
