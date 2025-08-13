let
  indent2 = {
    opts.expandtab = true;
    opts.shiftwidth = 2;
    opts.tabstop = 2;
  };
in
{
  files."ftplugin/beancount.lua" = indent2;
  files."ftplugin/javascript.lua" = indent2;
  files."ftplugin/json.lua" = indent2;
  files."ftplugin/haskell.lua" = indent2;
  files."ftplugin/nix.lua" = indent2;
  files."ftplugin/typescript.lua" = indent2;
  files."ftplugin/typescriptreact.lua" = indent2;
}
