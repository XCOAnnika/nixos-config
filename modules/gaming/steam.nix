{ config, pkgs, ... }:

# This Setsup hyfetch with fastfetch as a base

{
    programs.steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      localNetworkGameTransfers.openFirewall = true;
    };    
    
    environment.systemPackages = with pkgs; [
        steam
        protontricks
    ];
}
