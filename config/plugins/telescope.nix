{
  enable = true;
  keymaps = {
    "<leader>fb" = {
      action = "buffers";
      options.desc = "Telescope Buffers";
    };
    "<leader>ff" = {
      action = "find_files";
      options.desc = "Telescope Find Files";
    };
    "<leader>fg" = {
      action = "live_grep";
      options.desc = "Telescope Live Grep";
    };
    "<leader>fd" = {
      action = "diagnostics";
      options.desc = "Telescope Diagnostics";
    };
    "<leader>f/" = {
      action = "current_buffer_fuzzy_find";
      options.desc = "Telescope Current Buffer";
    };
    "<leader>fh" = {
      action = "help_tags";
      options.desc = "Telescope Help Tags";
    };
    "<leader>fo" = {
      action = "oldfiles";
      options.desc = "Telescope Recent Files";
    };
    "<leader>fr" = {
      action = "lsp_references";
      options.desc = "Telescope LSP References";
    };
    "<leader>fs" = {
      action = "lsp_document_symbols";
      options.desc = "Telescope Document Symbols";
    };
  };
}
