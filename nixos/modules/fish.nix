{ config, pkgs, ... }:

{
  programs.fish = {
    enable = true;

    shellAliases = {
      ".." = "cd ..";
      "..." = "cd ../../";
      grep = "grep --color=auto";
      tt = "tt -n 10 -theme custom";
      ff = "fastfetch -c ~/.config/fastfetch/image.jsonc";
      ffs = "fastfetch -c ~/.config/fastfetch/small.jsonc --logo-type small";
      fff = "fastfetch -c ~/.config/fastfetch/full.jsonc";
      sd = "shutdown 0";
      rb = "shutdown -r 0";
      vim = "nvim";
      svim = "sudo nvim";
      p = "sudo pacman";
      ls = "exa -1lhmU --group-directories-first --no-permissions --no-user --icons --color always --sort date -r --time-style iso";
      lsa = "exa -1alhmUF --group-directories-first --no-permissions --no-user --icons --color always --sort date -r --time-style iso";
      cls = "c && lsa";
      lls = "/bin/ls";
      c = "clear";
      dim = "echo 70 | sudo tee /sys/class/backlight/intel_backlight/brightness";
      clock = "tty-clock -s -C 5";
      led = "echo off | sudo tee /sys/class/sound/ctl-led/mic/mode";
      commits = "~/Desktop/git-repos/commits/commits.sh";
      cm = "chezmoi";
      dcolors = "Desktop/scripts/display-colors.fish";
      cmcd = "cd /home/strawberries/.local/share/chezmoi/";
      deb = "sudo lxc-start -n debian -f /var/lib/lxc/debian/config -d; sudo lxc-attach -n debian -- login";
      t = "tmux";
      ta = "tmux attach";
      theme = "~/.config/scripts/palette/change-wallpaper.sh";
    };

    interactiveShellInit = ''
      function palette
          ~/.config/scripts/palette/change-wallpaper.sh $argv
      end

      function shufbg
          fish -c 'source ~/.config/fish/functions/palette.fish; set wallpaper (lls ~/Pictures/Wallpapers/rin/ | shuf -n 1 | sed s/.png\$//); palette "rin/$wallpaper"'
      end

      if status is-interactive
          ff
      else
          set -U fish_greeting
      end

      # Env variables
      set -Ux EDITOR nvim
      set -x MANPAGER 'nvim +Man!'

      # Set the prompt
      starship init fish | source

      # Add PATH
      set PATH $PATH /home/strawberries/.local/bin

      # Bindings
      bind \b 'commandline -r ""'

      # External configs
      for file in ~/.config/fish/functions/*
          source $file 2>/dev/null
      end
      source ~/private/config.fish 2>/dev/null
    '';
  };
}
