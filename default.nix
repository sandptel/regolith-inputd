{pkgs,...}:

pkgs.rustPlatform.buildRustPackage rec {
pname = "regolith-inputd";
version = "main";

src = ./.;

cargoHash = "sha256-6rUu8D3TXCz91Xus6ZCD8JRXjbYnWcUa+6WM133tUlY=";

nativeBuildInputs = with pkgs;[pkg-config rustc];
buildInputs = with pkgs;[glib];

  meta = {
    mainProgram = "regolith-inputd";
    description = "Input management daemon for regolith wayland session. ";
    homepage = "https://github.com/regolith-linux/regolith-inputd";
    license = pkgs.lib.licenses.gpl3Plus;
  };
}