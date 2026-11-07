class Updiff < Formula
  desc "See what a macOS app update actually changed inside the app"
  homepage "https://github.com/intincrab/updiff"
  url "https://github.com/intincrab/updiff/releases/download/v0.1.1/updiff-0.1.1.tgz"
  sha256 "6ee08c3e257c35691a203050f01712721195fa575ae47d237d17008f6ce4871d"
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
