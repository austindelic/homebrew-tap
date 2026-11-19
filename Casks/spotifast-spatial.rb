cask "spotifast-spatial" do
  version "0.17.2-spatial.1"
  sha256 "5bf8ad3463d00fd7d2bef126acc4d602bf25d77548cbda55d85e7212b34e0e40"

  url "https://github.com/austindelic/spotifast-spatial/releases/download/v#{version}/spotifast-v#{version}-macos-arm64.dmg"
  name "Spotifast Spatial"
  desc "Spotify client with native spatial audio and head tracking"
  homepage "https://github.com/austindelic/spotifast-spatial"

  # The releases are GitHub pre-releases, which :github_releases skips.
  livecheck do
    url "https://github.com/austindelic/spotifast-spatial.git"
    regex(/^v?(\d+(?:\.\d+)+-spatial\.\d+)$/i)
    strategy :git
  end

  auto_updates true
  conflicts_with cask: "spotifast"
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Spotifast.app"

  zap trash: [
    "~/Library/Application Support/me.paolino.spotifast",
    "~/Library/Caches/me.paolino.spotifast",
  ]
end
