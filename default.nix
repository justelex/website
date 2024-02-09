with import <nixpkgs> {};

# Make a new "derivation" that represents our shell
stdenv.mkDerivation {
  name = "WWL_WEBSITE";
  buildInputs = [
    pkgs.cowsay
    pkgs.figlet
    pkgs.lolcat
    pkgs.git
    pkgs.hexo-cli	
    pkgs.nodejs_21
    pkgs.gifsicle
    pkgs.autoconf
    pkgs.optipng
    pkgs.gcc
    pkgs.zlib
 ];
	  shellHook = '' 
    git submodule update --init
    git pull -r
    git submodule update
    npm install;
    figlet "WWL Webiste DEV-ENV" | lolcat --freq 0.5
  '';
}

