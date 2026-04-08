cask "jot" do
  version "0.0.4"
  sha256 "6ae61b750918e858b35b246d11d3aaf68307982714919a1a4464538c1dd0e50b"

  url "https://github.com/acidsugarx/jot/releases/download/v0.0.4/jot_0.0.4_aarch64.dmg"
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
