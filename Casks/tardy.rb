cask "tardy" do
  version "0.1.0"
  sha256 "ecda67aa48f4da92c4a01e45f6ec2aa8aa5966e56b25c68687fc4f7342c9f465"

  url "https://github.com/nikp29/tardy/releases/download/v#{version}/Tardy-#{version}.tar.gz"
  name "Tardy"
  desc "macOS menu bar app that takes over your screen to remind you of calendar events"
  homepage "https://github.com/nikp29/tardy"

  depends_on macos: ">= :sonoma"

  app "Tardy.app"

  caveats <<~EOS
    Tardy is not notarized with Apple.

    On first launch, macOS will block the app. To open it:
      1. Right-click Tardy.app and select "Open"
      2. Or go to System Settings > Privacy & Security and click "Open Anyway"

    Tardy also requires calendar access. You'll be prompted on first launch.
  EOS
end
