{ config, ... }:

{
  services = {
    openssh.enable = true;
    fail2ban = {
      enable = true;
      maxretry = 5;
      bantime = 600;
    };
  };
}
