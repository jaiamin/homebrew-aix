class Aix < Formula
  desc "Turn plain English into shell commands with Apple Intelligence"
  homepage "https://github.com/jaiamin/aix"
  url "https://github.com/jaiamin/aix/releases/download/v0.2.0/aix-0.2.0-arm64-macos.tar.gz"
  sha256 "c83e21c14a6581a2d6502683b19b0791d761a0e7450e04d0179198807e74f8c8"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "aix"
  end

  def caveats
    <<~EOS
      aix uses Apple Intelligence. Turn it on in
      System Settings → Apple Intelligence & Siri.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aix --version")
  end
end
