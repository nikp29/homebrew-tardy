cask "tardy" do
  version "0.1.7"
  sha256 "074f079289e22122c6d5c86c9b061fce41b697dd97edbcb0d3eb10b1663978ee"

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
