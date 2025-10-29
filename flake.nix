{
  description = "Stacklook - KernelShark plugin";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    kshark.url = "path:../KS_fork";
  };

  outputs = { self, nixpkgs, kshark }:
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {
    packages.x86_64-linux.default = pkgs.callPackage ./build.nix {
        modif-kshark = kshark.packages.x86_64-linux.default;
    };
  };
}
