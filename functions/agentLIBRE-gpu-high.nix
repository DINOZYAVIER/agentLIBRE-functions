# DinoBot on the default model, the Function a run loads when the settings
# name none (AGL-039, D28, D32, D44). The vision projector is on the GPU,
# not the CPU of the model default: 0.86 GB of F16 weights, and the 24 GB
# card holds it with the whole model at 128K of context.
{ agl, ... }:
{
  description = "for a GPU with 24 GB of VRAM: Qwen3.8 27B, 128K of context, the vision projector on the GPU";
  policy = agl.policies.agentLIBRE;
  model = agl.models."qwen3.8-27b-iq4_xs" // {
    mmproj_offload = true;
  };
}
