# agentLIBRE-functions

The Functions that come with [agl](https://github.com/DINOZYAVIER/agentLIBRE): each is a
policy and a model, in `functions/<name>.nix`, a function of `{ agl, ... }`. The `agl`
argument gives the policies, the formats and the models.

agl takes this repository as a flake input, pinned in its `flake.lock`, so a new Function
reaches users when agl's lock is updated. A Function of the same name in a project or in
`~/.config/agentLIBRE/functions/` wins over the one here.

`agl function list` shows them, and `agl function use <name>` picks one.

Licensed under the Apache License 2.0; see [LICENSE](LICENSE).
