{ config, pkgs, ... }:

{
  services.minecraft-servers = {
    enable = true;
    eula = true;

    servers = {
      vanilla-survival = {
        enable = true;
        package = pkgs.paperServers.paper-1_21_4;

        serverProperties = {
          server-port = 49153;
          gamemode = "survival";
          difficulty = "hard";
          simulation-distance = 25;
          view-distance = 25;
        };
      };
    };
  };
}
