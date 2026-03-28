class Jot < Formula
  desc "Keyboard-first task manager with local-first storage"
  homepage "https://github.com/acidsugarx/jot"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/acidsugarx/jot/releases/download/v#{version}/jot_0.1.0_aarch64.dmg"
      sha256 "1f678acca4f75fd208b706881903c31c851d53d24f271bc838e0b523fbc11270"
    end
  end

  def install
    app.install "jot.app"
  end

  test do
    assert_path_exists bin.parent/"jot.app"
  end
end
