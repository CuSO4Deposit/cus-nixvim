{
  enable = true;
  settings = {
    highlight = {
      additional_vim_regex_highlighting = true;
      enable = true;
    };
    incremental_selection = {
      enable = true;
      keymaps = {
        init_selection = "<A-o>";
        node_incremental = "<A-o>";
        node_decremental = "<A-i>";
        scope_incremental = "<A-O>";
      };
    };
    indent.enable = true;
  };
}
