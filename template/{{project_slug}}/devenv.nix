{ pkgs, lib, config, inputs, ... }:

{
  dotenv.enable = true;

  packages = [
    pkgs.git
    pkgs.hadolint
    pkgs.commitlint-rs
    pkgs.container-structure-test
    pkgs.lefthook
    pkgs.go-task
    pkgs.trivy
  ];

  enterShell = ''
    lefthook install
  '';
}
