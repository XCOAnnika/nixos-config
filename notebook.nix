{ config, pkgs, ... }:

{
    imports = [
        ./core.nix
        ./modules/development/dotnet.nix
        ./modules/development/python.nix
    ];

    environment.systemPackages = with pkgs; [
        vesktop # Discord
        signal-desktop # Signal messenger
    ];
}