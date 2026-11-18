# DinoBot on the ThinkingCap finetune of Qwen3.8-Flash-Next in its IQ4_XS on upstream
# Strata (AGL-070, AGL-089): the engine of `programs.agl.strata = [ "upstream" ];`.
{ agl, ... }:
{
  description = "for an AMD RDNA3 GPU with 24 GB of VRAM and 64 GB of RAM (Strata): Qwen3.8-Flash-Next 125B ThinkingCap IQ4_XS, 256K of context";
  policy = agl.policies.agentLIBRE;
  model = agl.models."qwen3.8-flash-next-thinkingcap-iq4_xs" // agl.strata.upstream;
}
