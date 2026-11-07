class Updiff < Formula
  desc "See what a macOS app update actually changed inside the app"
  homepage "https://github.com/intincrab/updiff"
  url "https://github.com/intincrab/updiff/releases/download/v0.1.0/updiff-0.1.0.tgz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
