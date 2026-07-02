{
  lib,
  stdenv,
  hugo,
  theme,
}:

stdenv.mkDerivation {
  name = "qgis-user-group-website";

  src = lib.cleanSourceWith {
    src = ../.;
    filter = (
      path: type:
      (builtins.all (x: x != baseNameOf path) [
        ".git"
        ".github"
        "flake.nix"
        "flake.lock"
        "package.nix"
        "result"
      ])
    );
  };

  buildInputs = [ hugo ];

  buildPhase = ''
    mkdir -p themes
    rm -rf themes/qgis-website-theme
    ln -s ${theme} themes/qgis-website-theme
    printf "%s" "${commitHash}" > config/commit.toml
    hugo --config config.toml,config/config.prod.toml
  '';

  installPhase = ''
    mkdir -p $out
    cp -r public_prod/* $out/
  '';

  meta = with lib; {
    description = "A built QGIS User Group website";
    license = licenses.mit;
  };
}
