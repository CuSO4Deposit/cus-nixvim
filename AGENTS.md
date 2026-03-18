# Cu's Nixvim Configuration

Personal Neovim configuration built with [Nixvim](https://github.com/nix-community/nixvim).

## Project Structure

```
flake.nix          — Flake entry point, defines inputs/outputs, builds the nvim package
config/
  default.nix      — Main config: editor options, colorscheme, plugin loading, extraPackages
  files.nix        — Per-filetype indent overrides (languages using 2-space indent)
  plugins/         — One .nix file per plugin, each exports a config attrset
    lsp.nix        — LSP server configs and keymaps
    cmp*.nix       — nvim-cmp completion related
    treesitter.nix — Treesitter highlight/selection/indent
    ...            — Other plugins, each self-contained
```

## Key Conventions

- **Nix formatting**: Uses `nixfmt-rfc-style` (enforced by pre-commit hook). Always format .nix files before committing.
- **Plugin module pattern**: `config/plugins/<name>.nix` exports an attrset, dynamically imported via the `pluginNames` list in `default.nix`. To add a new plugin:
  1. Create `config/plugins/<name>.nix`
  2. Add the name to the `pluginNames` list in `default.nix`
- **Filetype indent**: Languages needing 2-space indent are configured in `files.nix` using the shared `indent2` binding.
- **Default indent**: 4 spaces (`shiftwidth = 4; tabstop = 4; expandtab = true`).
- **Leader key**: Space.
- **Colorscheme**: Tokyo Night (night style).

## LSP Servers

rust_analyzer, ts_ls, pyright, nixd, hls, clangd, eslint, tinymist (Typst), beancount, protols

## Build & Test

```bash
nix build          # Build the nvim package (output at ./result)
nix flake check    # Run checks (includes nixfmt pre-commit)
nix develop        # Enter devShell (with pre-commit hooks)
```

## Notes

- `flake.nix` uses flake-parts, supporting 4 systems (aarch64/x86_64 x darwin/linux).
- `extraPlugins` is for vim plugins not in the nixvim plugin system (e.g. vim-beancount).
- `extraPackages` is for external tools needed on PATH (e.g. protobuf).
- Commented-out plugins (markview, nvim-surround) indicate past attempts with issues — be cautious before re-enabling.
