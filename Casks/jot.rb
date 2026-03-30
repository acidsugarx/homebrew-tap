cask "jot" do
  version "0.0.3"
  sha256 "a38a3d7df5c7ef296d05bea1c003a34afadfd4fc559fba4dd43347e5de4df2ef"

  url "https://github.com/acidsugarx/jot/releases/download/v0.0.3/jot_0.0.3_aarch64.dmg"
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
