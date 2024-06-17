{ config, pkgs, ... }:

{
  services.minetest-server = {
    enable = true;
    gameId = "minetest";
    port = 30000;
  };

  environment.systemPackages = [
    pkgs.minetestserver
  ];
}
