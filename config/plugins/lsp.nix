{ racketLanguageServer }:

{
  enable = true;
  keymaps = {
    diagnostic = {
      "<leader>k" = "goto_prev";
      "<leader>j" = "goto_next";
    };
    extra = [
      {
        action = {
          __raw = ''
            function()
                      local float = vim.diagnostic.config().float

                      if float then
                        local config = type(float) == "table" and float or {}
                        config.scope = "line"

                        vim.diagnostic.open_float(config)
                      end
                    end'';
        };
        key = "<leader>l";
      }
    ];
    lspBuf = {
      gd = "definition";
      gD = "declaration";
      gt = "type_definition";
      gi = "implementation";
      K = "hover";
      "<F2>" = "rename";
    };
  };
  servers = {
    beancount = {
      enable = true;
      package = null;
    };
    clangd = {
      enable = true;
      filetypes = [
        "c"
        "cpp"
        "objc"
        "objcpp"
        "cuda"
      ];
    };
    eslint = {
      enable = true;
      filetypes = [
        "javascript"
        "typescript"
        "typescriptreact"
      ];
    };
    hls = {
      enable = true;
      installGhc = false;
      package = null;
    };
    nixd.enable = true;
    rust_analyzer = {
      enable = true;
      installCargo = true;
      installRustc = true;
    };
    tinymist = {
      enable = true;
      settings.offset_encoding = "utf-8";
      package = null;
    };
    ts_ls.enable = true;
    protols = {
      enable = true;
      package = null;
    };
    pyright.enable = true;
    racket_langserver = {
      enable = true;
      cmd = [ "${racketLanguageServer}/bin/racket-langserver" ];
      package = racketLanguageServer;
    };
    zls = {
      enable = true;
      package = null;
    };
  };
}
