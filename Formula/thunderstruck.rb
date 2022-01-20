class Thunderstruck < Formula
  desc "Connecting dialogmngr to the browser"
  homepage "https://github.com/m-rots/thunderstruck"
  url "https://github.com/m-rots/thunderstruck/archive/0.1.0.tar.gz"
  sha256 "6ffadabe93ca4a55bf2107d45e88174be91f7af964abc9d57cf3bf2b8efe294d"
  license ""

  bottle do
    root_url "https://github.com/m-rots/homebrew-project-mas/releases/download/thunderstruck-0.1.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "c683e809ca8f51c469ad0d663553d50a419a11b9a3e7c44eb31cd13dc3b5396d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c1b52e1813a685490c9703521359ed83306581ea89932ff0dff78944f11d666a"
  end

  depends_on "rust" => :build
  depends_on "openssl@1.1"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "thunderstruck 0.1.0", shell_output("#{bin}/thunderstruck --version")
  end
end
