with import <nixpkgs> {};
let
  pythonEnv = python37.withPackages(ps: [
    ps.matrix-nio
    ps.inotify
  ]);
in mkShell {
  builtInputs = [
    pythonEnv
  ];
}
