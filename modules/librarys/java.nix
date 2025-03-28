{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        jdk11
        jdk17
        jdk23
    ];
}