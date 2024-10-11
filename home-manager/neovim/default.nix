{
  config,
  pkgs,
  system,
  lib,
  ...
}: let
  util = (import ../util.nix) {config = config;};
in {
  home.packages = with pkgs; [
    unstable.neovim
  ];

  home.file = util.linkAll (util.dot "neovim/dots") "${config.home.homeDirectory}";
}
