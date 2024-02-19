{ config, pkgs, ... }:

{
  home = {
    stateVersion = "24.05";
    username = "homelab";
    homeDirectory = "/home/homelab";
    packages = with pkgs; [
      # Console
      coreutils
      curl
      dos2unix
      jq
      rsync
      tmux
      tree
      udisks
      unrar
      unzip
      vim
      wget
      zip
      
      # Filesystem
      exfatprogs
      hfsprogs
      ntfs3g
      parted

      # Utilities
      docker-compose
      cryptsetup
      emacs
      htop
      openssh
    ];

    file.".ssh".source = config.lib.file.mkOutOfStoreSymlink "/home/homelab/.nixos-extra/ssh";
    
    sessionVariables = {
      EDITOR = "emacs";
    };

    shellAliases = {
      ls = "ls --color=auto";  # Colorize the `ls` command
    };
  };

  programs.bash = {
    enable = true;
    historyControl = [
      "erasedups"
      "ignoredups"
      "ignorespace"
    ];
    initExtra = ''PS1="[\u@\h \W]\$ "'';
  };

  programs.git = {
    enable = true;
    userName = "Philippe Olivier";
    userEmail = "philippe@pedtsr.ca";
    ignores = [
      "*~"
    ];
  };

  programs.home-manager.enable = true;
}
