{ config, ... }:

{
  services = {
    openssh.enable = true;
    fail2ban = {
      enabled = true;
      maxretry = 5;
      bantime = 600;
    };
  };
}
