with import <nixpkgs> {};

stdenv.mkDerivation rec {
    name = "FDM";
    buildInputs = [
        gnumake
        (texlive.combine { inherit (texlive) scheme-basic latexmk; })
    ];
    src = pkgs.lib.sources.sourceFilesBySuffices ./. [".tex" ".pdf" "Makefile" ".png"];
}
