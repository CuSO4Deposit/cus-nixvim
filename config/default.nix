{ pkgs, racketLanguageServer, ... }:

{
  autoCmd = [
    {
      command = "set filetype=markdown";
      event = [
        "BufNewFile"
        "BufRead"
      ];
      pattern = [ "*.Avante" ];
    }
  ];

  colorschemes.tokyonight = {
    enable = true;
    settings = {
      cache = true;
      style = "night";
    };
  };

  imports = [
    ./files.nix
  ];

  globals = {
    mapleader = " ";
  };

  opts = {
    ambiwidth = "double"; # show east asian char as double width
    autochdir = true; # auto change shell dir when file changes
    autoindent = true;
    cindent = true;
    clipboard = "unnamed"; # use register "+"
    cursorcolumn = true; # highlight current column
    cursorline = true; # highlight current line
    expandtab = true; # input spaces instead of tabs
    list = true; # show trailing characters etc.
    listchars = "tab:>-,trail:-";
    mouse = ""; # disable mouse
    number = true; # show line number
    relativenumber = true; # show line number relative to cursor
    ruler = true; # show line and column number of cursor
    shiftwidth = 4; # tabstop
    tabstop = 4;
    title = true;
  };

  plugins =
    let
      path = ./plugins;
      pluginNames = [
        "autoclose"
        "cmp"
        "cmp-buffer"
        "cmp-nvim-lsp"
        "cmp-path"
        "cmp_luasnip"
        "comment"
        "illuminate"
        "indent-blankline"
        "lsp"
        "lspkind"
        "lualine"
        "luasnip"
        "minuet"
        "nvim-surround"
        "rainbow-delimiters"
        "telescope"
        "typst-vim"
        "treesitter"
        "wakatime"
        "web-devicons" # for telescope
        "zig"
      ];
    in
    builtins.listToAttrs (
      map (name: {
        name = name;
        value =
          if name == "lsp" then
            import "${path}/${name}.nix" { inherit racketLanguageServer; }
          else
            import "${path}/${name}.nix";
      }) pluginNames
    );

  extraPackages = with pkgs; [
    protobuf
  ];

  extraPlugins = with pkgs.vimPlugins; [
    vim-beancount
    cmp-beancount
  ];
}
