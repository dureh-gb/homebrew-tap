# dureh-gb/homebrew-tap

Public Homebrew tap for the Dureh family's macOS tools.

```sh
brew tap dureh-gb/tap
brew trust dureh-gb/tap                     # trust this tap once (Homebrew asks for it for non-official taps)
brew install danjam                         # then: danjam install
brew update && brew upgrade danjam          # then: danjam install (restarts it)
brew uninstall danjam                       # after: danjam uninstall
```

| Formula | What |
|---|---|
| [`danjam`](https://github.com/dureh-gb/danjam) | 단잠: switch off an external USB fan on a Mac mini M4 front port while the Mac sleeps (macOS, Apple silicon) |

`brew trust` is stored per user on each Mac (`~/.homebrew/trust.json`); a tap cannot trust itself for others. To trust only one formula: `brew trust --formula dureh-gb/tap/danjam`.

Everything in this tap is public, formulae and their downloads alike. Private tools go in a separate private tap.
