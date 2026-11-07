# intincrab/homebrew-tap

Homebrew formulae for [intincrab](https://github.com/intincrab)'s tools.

```bash
brew install intincrab/tap/updiff
```

| Formula | What it is |
|---|---|
| [`updiff`](Formula/updiff.rb) | See what a macOS app update actually changed inside the app: permissions, privacy prompts, background items, helpers, bundled packages and hostnames. [Project](https://github.com/intincrab/updiff) |

The [workflow](.github/workflows/updiff.yml) checks for a new updiff release every four
hours. When it finds one, it updates the formula's URL and checksum, then installs and
tests the formula on macOS.
