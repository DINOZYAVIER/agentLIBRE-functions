# DinoBot on E4B on the GPU, from 8 GB of VRAM (AGL-050, D14-D16). The projector
# is on the GPU too, for the dictation: 11 s of speech take 0.3 s there and 4.3 s
# on the CPU, for 1.24 GB more (AGL-051).
{ agl, ... }:
{
  description = "for a GPU with 8 GB of VRAM and more: Gemma 4 E4B, the vision projector on the GPU";
  policy = agl.policies.agentLIBRE;
  model = agl.models."gemma-4-e4b-qat" // {
    mmproj_offload = true;
  };
}
