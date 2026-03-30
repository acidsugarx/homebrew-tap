class Jot < Formula
  desc "Keyboard-first task manager with local-first storage"
  homepage "https://github.com/acidsugarx/jot"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/acidsugarx/jot/releases/download/v0.0.2/jot_0.1.0_aarch64.dmg"
      sha256 "6631563b590317378007d974c15b1a987803bc7e95469033b34d063851b563c9"
    end
  end

  def install
    app.install "jot.app"
  end

  test do
    assert_path_exists bin.parent/"jot.app"
  end
end
