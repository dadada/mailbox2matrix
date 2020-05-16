with import <nixpkgs> {};
let
  pythonEnv = python37.withPackages(ps: [
    ps.matrix-nio
    ps.inotify-simple
  ]);
in mkShell {
  builtInputs = [
    pythonEnv
  ];
}
