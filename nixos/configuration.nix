{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/system.nix
    ./modules/networking.nix
    ./modules/users.nix
    ./modules/services.nix
    ./modules/minecraft.nix
  ];

  nixpkgs.config.allowUnfree = true;

  programs.fish.enable = true;

  nixpkgs.overlays = [ inputs.nix-minecraft.overlay ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "24.11";
}
