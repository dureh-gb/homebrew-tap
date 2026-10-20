# dureh-gb/homebrew-tap

Public Homebrew tap for the Dureh family's macOS tools.

```sh
brew tap dureh-gb/tap
brew trust --formula dureh-gb/tap/danjam    # Homebrew asks you to trust a formula from a new tap once
brew install danjam                         # then: danjam install
brew update && brew upgrade danjam          # then: danjam install (restarts it)
brew uninstall danjam                       # after: danjam uninstall
```

| Formula | What |
|---|---|
| [`danjam`](https://github.com/dureh-gb/danjam) | 단잠: switch off an external USB fan on a Mac mini M4 front port while the Mac sleeps (macOS, Apple silicon) |

Everything in this tap is public, formulae and their downloads alike. Private tools go in a separate private tap.
