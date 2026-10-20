class Danjam < Formula
  desc "Switch off an external USB fan on a Mac mini M4 front port while the Mac sleeps"
  homepage "https://github.com/dureh-gb/danjam"
  url "https://github.com/dureh-gb/danjam.git",
      tag:      "v0.1.0",
      revision: "23b6e06fb087baf5dcd3018ea85fce18a1fcc8d6"
  head "https://github.com/dureh-gb/danjam.git", branch: "main"

  depends_on "rust" => :build
  depends_on :macos
  depends_on "uhubctl"

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "bin/danjam"
  end

  def caveats
    <<~EOS
      macOS only. Start it for the fan's front USB-C port (default: front left):
        danjam install            # or: danjam install --front right
        danjam test               # the fan should stop for 3 s
      macOS shows a one-time "Background Items Added" notice; keep it allowed.
    EOS
  end

  test do
    assert_match "usage", shell_output("#{bin}/danjamd --bogus 2>&1", 2)
    assert_match "danjam install", shell_output("#{bin}/danjam 2>&1", 2)
  end
end
