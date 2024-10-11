{
  config,
  pkgs,
  system,
  lib,
  ...
}: let
in {
  home.packages = with pkgs; [
    bitwise
  ];
}
