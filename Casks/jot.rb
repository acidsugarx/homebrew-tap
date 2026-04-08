cask "jot" do
  version "0.0.4"
  sha256 "b663f4693c20281fefcecbcc6e829cd38462363db86fef99cdb11fefb6637b5c"

  url "https://github.com/acidsugarx/jot/releases/download/v0.0.4/jot_0.0.3_aarch64.dmg"
  name "Jot"
  desc "Keyboard-first task manager"
  homepage "https://github.com/acidsugarx/jot"

  depends_on macos: ">= :ventura"

  app "jot.app"

  zap trash: [
    "~/Library/Application Support/com.jot.app",
    "~/Library/Caches/com.jot.app",
    "~/Library/Preferences/com.jot.app.plist",
  ]
end
