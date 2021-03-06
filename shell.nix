let
  pkgs = import ./nix/pkgs.nix;

in
pkgs.haskellPackages.shellFor {
  packages = p: [
    p.template
  ];

  buildInputs = [
    pkgs.cabal-install
    pkgs.ghcid
    pkgs.haskellPackages.fourmolu
    pkgs.nixpkgs-fmt
  ];

  withHoogle = true;
}
