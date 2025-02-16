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

        jvmOpts = "-Xms14336M -Xmx14336M -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=40 -XX:G1MaxNewSizePercent=50 -XX:G1HeapRegionSize=16M -XX:G1ReservePercent=15";

        serverProperties = {
          server-port = 49153;
          motd = "Vanilla survival server";

          simulation-distance = 25;
          view-distance = 25;

          gamemode = "survival";
          difficulty = "hard";
        };
      };
      vanilla-creative = {
        enable = true;
        autoStart = false;
        package = pkgs.paperServers.paper-1_21_4;

        jvmOpts = "-Xms14336M -Xmx14336M -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=40 -XX:G1MaxNewSizePercent=50 -XX:G1HeapRegionSize=16M -XX:G1ReservePercent=15";

        serverProperties = {
          server-port = 49153;
          motd = "Vanilla creative server";

          simulation-distance = 25;
          view-distance = 25;

          gamemode = "creative";
          difficulty = "normal";
          level-type = "minecraft\:flat";
          spawn-monsters = false;
          generate-structures = false;
        };
      };
    };
  };
}
