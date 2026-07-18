# homebrew-space

Homebrew tap for [Space](https://github.com/tuyoleni/space).

```
brew install tuyoleni/space/space
```

## Publishing a new version

1. Push a tag on the main repo, e.g. `git tag v1.0.0 && git push origin v1.0.0` — the `release` GitHub Actions workflow builds unsigned arm64/x64 zips and attaches them to a GitHub Release.
2. Get each zip's checksum: `shasum -a 256 space-darwin-arm64.zip` (repeat for x64).
3. Update `Casks/space.rb`: bump `version`, replace both `sha256` placeholders.
4. Commit and push. `brew install tuyoleni/space/space` now pulls the new version (`brew upgrade` for existing installs).

## Setup (one-time)

This directory needs to become its own GitHub repo named exactly `homebrew-space` under the `tuyoleni` account — Homebrew resolves `tuyoleni/space/space` as `github.com/tuyoleni/homebrew-space`, `Casks/space.rb`.

```
cd /Users/tuyoleni/Developer/Personal/Desktop/homebrew-space
git init
git add .
git commit -m "Add space cask"
gh repo create tuyoleni/homebrew-space --public --source=. --push
```
