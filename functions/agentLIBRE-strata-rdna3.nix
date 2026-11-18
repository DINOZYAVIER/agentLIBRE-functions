# DinoBot on Qwen3.8-Flash-Next in Unsloth's UD-IQ4_XS on the RDNA3 fork of Strata
# (AGL-086, AGL-089): the engine of `programs.agl.strata = [ "rdna3" ];`.
{ agl, ... }:
{
  description = "for an RX 7900 XTX (24 GB of VRAM) and 64 GB of RAM (the RDNA3 fork of Strata): Qwen3.8-Flash-Next 125B UD-IQ4_XS, 256K of context";
  policy = agl.policies.agentLIBRE;
  model = agl.models."qwen3.8-flash-next-ud-iq4_xs" // agl.strata.rdna3;
}
