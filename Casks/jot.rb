cask "jot" do
  version "0.0.2"
  sha256 "6631563b590317378007d974c15b1a987803bc7e95469033b34d063851b563c9"

  url "https://github.com/acidsugarx/jot/releases/download/v#{version}/jot_0.1.0_aarch64.dmg"
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
