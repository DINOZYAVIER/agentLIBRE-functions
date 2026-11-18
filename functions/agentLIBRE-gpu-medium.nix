# DinoBot on 12B on the GPU, from 10 GB of VRAM, with little room at 10 GB (AGL-050, D14-D16).
{ agl, ... }:
{
  description = "for a GPU with 10 GB of VRAM and more: Gemma 4 12B";
  policy = agl.policies.agentLIBRE;
  model = agl.models."gemma-4-12b-qat";
}
