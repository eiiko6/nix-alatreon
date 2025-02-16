{ config, pkgs, inputs, ... }:

{
  users.users = {
    strawberries = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
    };
  };

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "strawberries" = import ../home.nix;
    };
  };
}
