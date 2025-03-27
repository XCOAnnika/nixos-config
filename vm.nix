{ config, pkgs, ... }:

{
    imports = [
        ./core.nix
        ./modules/development/dotnet.nix
        ./modules/development/python.nix
        ./modules/development/docker.nix
	./modules/cli/fetch.nix
    ];

    environment.systemPackages = with pkgs; [
        nix-search-cli # Search Nix packages via CLI
    ];
}
