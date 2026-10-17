class Aix < Formula
  desc "Turn plain English into shell commands with Apple Intelligence"
  homepage "https://github.com/jaiamin/aix"
  url "https://github.com/jaiamin/aix/releases/download/v0.3.0/aix-0.3.0-arm64-macos.tar.gz"
  sha256 "ad77f0c912cfffc1483f3fae073a9b4c7ff17af43efd0ea830b3ab038d509905"
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
