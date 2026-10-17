class Aix < Formula
  desc "Turn plain English into shell commands with Apple Intelligence"
  homepage "https://github.com/jaiamin/aix"
  url "https://github.com/jaiamin/aix/releases/download/v0.3.1/aix-0.3.1-arm64-macos.tar.gz"
  sha256 "6e2e4e300ed99c80878ed2013cb46cba3181df6f9fba7c7bcc7966756a22456a"
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
