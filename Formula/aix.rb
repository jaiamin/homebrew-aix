class Aix < Formula
  desc "Turn plain English into shell commands with Apple Intelligence"
  homepage "https://github.com/jaiamin/aix"
  url "https://github.com/jaiamin/aix/releases/download/v0.2.1/aix-0.2.1-arm64-macos.tar.gz"
  sha256 "fd079586ef10a0c7b7a2b1622b82ac57ef3539a25121ebd10832b419a5282d3e"
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
