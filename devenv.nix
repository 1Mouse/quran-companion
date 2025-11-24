{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  packages =
    (with pkgs; [
      go-task
      ninja
    ])
    ++ (with pkgs.kdePackages; [
      qtbase
      qttools
      qtwayland
      qtmultimedia
      qtimageformats
      qttranslations
    ]);

  languages.cplusplus = {
    enable = true;
  };

  git-hooks.hooks = {
    clang-tidy.enable = true;
    clang-format.enable = true;
    cmake-format.enable = true;
    prettier.enable = true;
  };
}
