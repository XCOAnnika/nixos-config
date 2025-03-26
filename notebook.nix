{ config, pkgs, ... }:

{
    imports = [
        ./core.nix
        ./modules/dotnet.nix
    ];

    environment.systemPackages = with pkgs; [
        vesktop # Discord
        signal-desktop # Signal messenger
    ];
}