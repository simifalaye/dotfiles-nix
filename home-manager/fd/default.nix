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
    fd
  ];
}
