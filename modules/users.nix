{ config, pkgs, ... }:

{
  users.mutableUsers = false;

  users.users.root = {
    isSystemUser = true;
    hashedPassword = "$y$j9T$G0Y8DMYeCovADHuKDb73a1$KqGTktIZlpdjEH4yubPnVTpZywk2Zf6fbk979YvKPk3";
  };
  
  users.users.homelab = {
    isNormalUser = true;
    hashedPassword = "$y$j9T$/agu8wY6h/PB20gbxj6aC.$JEuBPcl7F5crecpUFQ3SH.cEsNjMYD.8JnHArimSAt/";
    description = "homelab";
    home = "/home/homelab";
    extraGroups = [
      "docker"
      "wheel"
    ];
  };
}
