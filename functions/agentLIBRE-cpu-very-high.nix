# DinoBot on E4B on the CPU with all its context, on a fast CPU: a full read takes half an hour at 80 tokens/s (AGL-050, D14-D16).
{ agl, ... }:
{
  description = "for 16 GB of RAM and more and a fast CPU (a CPU Function): Gemma 4 E4B, all its 128K of context";
  policy = agl.policies.agentLIBRE;
  model = agl.models."gemma-4-e4b-qat" // {
    context = 131072;
    args = agl.args.cpu;
  };
}
