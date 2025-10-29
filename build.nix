{
  stdenv,
  modif-kshark,
  cmake,
  pkg-config,
  wrapQtAppsHook,
}:
stdenv.mkDerivation {
  pname = "Stacklook";
  version = "1.0";

  src = ./.;

  buildInputs = [modif-kshark];
  nativeBuildInputs = [pkg-config cmake wrapQtAppsHook];
}
