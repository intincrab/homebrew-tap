class Updiff < Formula
  desc "See what a macOS app update actually changed inside the app"
  homepage "https://github.com/intincrab/updiff"
  url "https://github.com/intincrab/updiff/releases/download/v0.2.0/updiff-0.2.0.tgz"
  sha256 "490c58264473762a27d97c5d94b22cb5b7de01a2d0566a5fa49c826f3bd6d838"
  license "MIT"

  depends_on :macos
  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/updiff --version")
    output = shell_output("#{bin}/updiff scan /System/Applications/Calculator.app --no-color")
    assert_match "com.apple.calculator", output
  end
end
