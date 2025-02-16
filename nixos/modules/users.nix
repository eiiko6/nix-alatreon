{ config, pkgs, inputs, ... }:

{
  users.users = {
    strawberries = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      initialPassword = "4587";
    };
  };

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "strawberries" = import ../home.nix;
    };
  };
}
