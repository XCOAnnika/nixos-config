{ config, pkgs, ... }:

{
    imports = [
        ./core.nix
    ];

    environment.systemPackages = with pkgs; [
        jetbrains-toolbox

        vesktop # Discord
    ];
}