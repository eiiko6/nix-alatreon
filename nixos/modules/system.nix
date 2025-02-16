{ config, pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  time.timeZone = "Europe/Paris";

  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    btop
    cargo
    chezmoi
    eza
    fastfetch
    fish
    gcc
    git
    imagemagick
    kitty
    mupdf
    neovim
    networkmanagerapplet
    nodejs_22
    python39
    pywal
    rust-analyzer
    starship
    tmux
    unrar
    unzip
    vim
    wget
    wl-clipboard
    wofi
    xfce.thunar
  ];
}
