# austindelic/tap

Homebrew casks by Austin Delic.

```sh
brew tap austindelic/tap
brew trust austindelic/tap
brew install --cask spotifast-spatial
```

Homebrew 7 only loads casks from taps you have trusted, which is what `brew trust` does.

| Cask | What it is |
| --- | --- |
| `spotifast-spatial` | [Spotifast Spatial](https://github.com/austindelic/spotifast-spatial), a fork of Spotifast with native macOS spatial audio and head tracking for compatible AirPods. Apple Silicon, macOS 12 or newer. |

Spotifast Spatial updates itself, so `brew upgrade` leaves it alone unless you pass `--greedy`. It uses the same `Spotifast.app` as the upstream `spotifast` cask, so uninstall that one first.
