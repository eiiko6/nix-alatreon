{ config, pkgs, ... }:

{
  services.minecraft-servers = {
    enable = true;
    eula = true;

    servers = {
      vanilla-survival = {
        enable = true;
        autoStart = false;
        package = pkgs.paperServers.paper-1_21_4;

        serverProperties = {
          server-port = 49153;
          gamemode = "survival";
          difficulty = "hard";
          simulation-distance = 25;
          view-distance = 25;
        };
      };
      vanilla-creative = {
        enable = true;
        autoStart = false;
        package = pkgs.paperServers.paper-1_21_4;

        serverProperties = {
          server-port = 49153;
          gamemode = "survival";
          difficulty = "hard";
          simulation-distance = 25;
          view-distance = 25;

          world-type = "flat";

          doDaylightCycle = false;
          doWeatherCycle = false;
          spawn-npcs = false;
          spawn-monsters = false;
          generate-structures = false;
        };
      };
    };
  };
}
