cask "tardy" do
  version "0.1.1"
  sha256 "aa4698b058be36509e0b3acb0f274ada99309abaa063782e4e585bb2fba99e0d"

  url "https://github.com/nikp29/tardy/releases/download/v#{version}/Tardy-#{version}.tar.gz"
  name "Tardy"
  desc "macOS menu bar app that takes over your screen to remind you of calendar events"
  homepage "https://github.com/nikp29/tardy"

  depends_on macos: ">= :sonoma"

  app "Tardy.app"

  postflight do
    system "open", "/Applications/Tardy.app"
  end

  caveats <<~EOS
    Tardy is not notarized with Apple.

    If macOS blocks the app on first launch:
      1. Go to System Settings > Privacy & Security
      2. Click "Open Anyway" next to the Tardy message
      3. Or right-click Tardy.app in /Applications and select "Open"

    Tardy will ask for calendar access on first launch.
    After setup, it runs in your menu bar (calendar icon) and launches automatically on login.
  EOS
end
