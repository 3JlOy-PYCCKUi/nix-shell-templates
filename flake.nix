{
  inputs = { };
  outputs = inputs: {
    description = "nix shell templates for development environment, compatible with nix-shell and nix develop";
    defaultTemplate = {
      path = ./templates/default;
      description = "Empty template";
    };
    templates = {
      zig = {
        path = ./templates/zig;
        description = "A development environment for Zig.";
      };
      ruby = {
        path = ./templates/ruby;
        description = "A development environment for Ruby.";
      };
      rust = {
        path = ./templates/rust;
        description = "A development environment for Rust.";
      };
    };
  };
}
