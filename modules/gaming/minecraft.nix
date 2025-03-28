{ config, pkgs, ... }:

{
    imports = [
        ../librarys/java.nix # import java
    ];
        
    environment.systemPackages = with pkgs; [
        #multimc #the multi mc owner was activly against it being put into the nix pkgs repo
        prismlauncher
    ];
}