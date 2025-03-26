{ config, pkgs, ... }:

{
    programs.git = {
        enable = true;

        config = {
            user = {
                name = "AceOfKestrels";
                email = "aceofkestrels@gmail.com";
            };
            init = {
                defaultBranch = "main";
            };
            credential = {
                helper = "store";
            };
        };
    };

    environment.systemPackages = with pkgs; [
        git
    ];
}