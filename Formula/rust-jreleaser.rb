# Generated with JReleaser 1.2.0 at 2022-10-08T15:25:13.165972+02:00
class RustJreleaser < Formula
  desc "A very, very simple Hello World application written in Rust"
  homepage ""
  url "https://github.com/dirien/rust-jreleaser/releases/download/v0.1.0/rust-jreleaser-0.1.0-darwin-amd64.zip"
  version "0.1.0"
  sha256 "b6ab4504025255b7dd2ae9d0e72ec113f91a83a49a0e898e77c559fd9f5a7864"
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
