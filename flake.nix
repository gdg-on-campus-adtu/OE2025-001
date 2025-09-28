{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };
  outputs =
    { flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "x86_64-darwin"
        "aarch64-linux"
        "aarch64-darwin"
      ];
      perSystem =
        { pkgs, ... }:
        {
          devShells.default = pkgs.mkShellNoCC {
            name = "OE2025-001";
            packages = [
              pkgs.just
              pkgs.mermaid-cli
              pkgs.maple-mono.NF
              pkgs.presenterm
              pkgs.python313Packages.weasyprint
              pkgs.typst
            ];
          };
        };
    };
}
