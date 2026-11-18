# The laconic nameless policy on the same model (AGL-039, D28, D31, D44).
{ agl, ... }:
{
  description = "for a GPU with 24 GB of VRAM: Qwen3.8 27B with the laconic minimal policy";
  policy = agl.policies.minimal;
  model = agl.models."qwen3.8-27b-iq4_xs";
}
