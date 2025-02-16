{ config, pkgs, ... }:

{
  home.username = "strawberries";
  home.homeDirectory = "/home/strawberries";

  programs = {
    fish.enable = true;
    starship.enable = true;
    neovim.enable = true;
    tmux.enable = true;
  };

  home.stateVersion = "24.11";
}
