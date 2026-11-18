# DinoBot on Qwen3.8-Flash-Next, the 125B mixture of experts, in Unsloth's UD-IQ4_XS
# on upstream Strata (AGL-089): the engine of `programs.agl.strata = [ "upstream" ];`.
{ agl, ... }:
{
  description = "for an AMD RDNA3 GPU with 24 GB of VRAM and 64 GB of RAM (Strata): Qwen3.8-Flash-Next 125B UD-IQ4_XS, 256K of context";
  policy = agl.policies.agentLIBRE;
  model = agl.models."qwen3.8-flash-next-ud-iq4_xs" // agl.strata.upstream;
}
