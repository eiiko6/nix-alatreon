{ config, ... }:

{
  networking = {
    hostName = "Alatreon";
    networkmanager.enable = true;
    firewall = {
      enable = true;
      allowedTCPPorts = [ 22 49153 ];
    };
  };
}
