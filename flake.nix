{
  description = "A very basic flake";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachSystem ["x86_64-linux"] (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells = {
        default = pkgs.mkShell {
          packages = with pkgs; [
            cmake
          ];
        };
      };
    });
}
