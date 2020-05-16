with import <nixpkgs> {};
let
  pythonEnv = python3.withPackages(ps: with ps; [
    inotify-simple
    matrix-nio
  ]);
in mkShell {
  name = "mailbox2matrix-env";
  buildInputs = [
    pythonEnv
  ];
}
