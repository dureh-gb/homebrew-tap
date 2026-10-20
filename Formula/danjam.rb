class Danjam < Formula
  desc "Switch off an external USB fan on a Mac mini M4 front port while the Mac sleeps"
  homepage "https://github.com/dureh-gb/danjam"
  # The release archive lives in this tap (dist/), built from the danjam tag v0.1.1: the prebuilt arm64 danjamd and
  # the danjam command. Homebrew downloads inside a sandbox that cannot read the login keychain, so a private
  # GitHub URL cannot be fetched; the tap itself is cloned by `brew tap` with the user's own git credentials.
  url "file://#{File.expand_path("../dist/danjam-0.1.1-arm64.tar.gz", __dir__)}"
  version "0.1.1"
  sha256 "19436a70b6a571990f42b184323e82f36360e3698d85dbcbad5e3b4e4ddf56a2"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "uhubctl"

  def install
    bin.install "dist/danjamd"
    bin.install "bin/danjam"
  end

  def caveats
    <<~EOS
      macOS only (Apple silicon). Start it for the fan's front USB-C port (default: front left):
        danjam install            # or: danjam install --front right
        danjam test               # the fan should stop for 3 s
      macOS shows a one-time "Background Items Added" notice; keep it allowed.
      After `brew upgrade danjam`, run `danjam install` again to restart it.
    EOS
  end

  test do
    assert_match "usage", shell_output("#{bin}/danjamd --bogus 2>&1", 2)
    assert_match "danjam install", shell_output("#{bin}/danjam 2>&1", 2)
  end
end
