# dureh-gb/homebrew-tap

Private Homebrew tap for the Dureh family's macOS tools.

Needs access to the private `dureh-gb` repositories: git must clone them over HTTPS, through the macOS keychain or `gh auth setup-git`.

```sh
brew tap dureh-gb/tap https://github.com/dureh-gb/homebrew-tap
brew trust --formula dureh-gb/tap/danjam
brew install danjam            # then: danjam install
brew update && brew upgrade danjam
brew uninstall danjam          # after: danjam uninstall
```

| Formula | What |
|---|---|
| `danjam` | 단잠: switch off an external USB fan on a Mac mini M4 front port while the Mac sleeps (macOS only) |
