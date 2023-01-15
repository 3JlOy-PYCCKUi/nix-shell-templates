{
  inputs = { };
  outputs = inputs: {
    description = "Generic nix shell template that is compatible with nix-shell and nix develop";
    defaultTemplate.path = ./template;
  };
}
