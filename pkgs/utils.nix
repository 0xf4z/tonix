{ pkgs, ... }:
{
 home.packages = with pkgs; [
	brightnessctl
	playerctl
	dust
 ];
}
