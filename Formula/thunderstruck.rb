class Thunderstruck < Formula
  desc "Connecting dialogmngr to the browser"
  homepage "https://github.com/m-rots/thunderstruck"
  url "https://github.com/m-rots/thunderstruck/archive/0.1.0.tar.gz"
  sha256 "6ffadabe93ca4a55bf2107d45e88174be91f7af964abc9d57cf3bf2b8efe294d"
  license ""

  depends_on "rust" => :build
  depends_on "openssl@1.1"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "thunderstruck 0.1.0", shell_output("#{bin}/thunderstruck --version")
  end
end
