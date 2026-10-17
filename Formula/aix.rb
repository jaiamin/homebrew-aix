class Aix < Formula
  desc "Turn plain English into shell commands with Apple Intelligence"
  homepage "https://github.com/jaiamin/aix"
  url "https://github.com/jaiamin/aix/releases/download/v0.3.2/aix-0.3.2-arm64-macos.tar.gz"
  sha256 "8bd0503e16337041b0f86b0f609e74ba4ab2c67876700cdc9553b781db671770"
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
