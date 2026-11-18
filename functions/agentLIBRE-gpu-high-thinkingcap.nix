# DinoBot on the ThinkingCap finetune of Qwen3.8 27B (BottleCap AI, the
# weights of which cut the reasoning tokens about 37% while holding the
# accuracy): the shape of agentLIBRE-gpu-high, the policy agentLIBRE, the
# model on the GPU with the projector on it too, 128K of context. Its
# IQ4_XS keeps the attention projections at 6-8 bit, so the weights are 1.2 GB
# heavier than the default model's, and the 24 GB card still holds them with
# the 128K of context and the q8 KV cache.
{ agl, ... }:
{
  description = "for a GPU with 24 GB of VRAM: Qwen3.8 27B ThinkingCap, 128K of context, the vision projector on the GPU";
  policy = agl.policies.agentLIBRE;
  model = agl.models."qwen3.8-27b-thinkingcap-iq4_xs" // {
    mmproj_offload = true;
  };
}
