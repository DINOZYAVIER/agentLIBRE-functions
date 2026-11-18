# DinoBot on E4B on the CPU, from 16 GB of RAM (AGL-050, D14-D16).
{ agl, ... }:
{
  description = "for 16 GB of RAM and more (a CPU Function): Gemma 4 E4B, 32K of context";
  policy = agl.policies.agentLIBRE;
  model = agl.models."gemma-4-e4b-qat" // {
    context = 32768;
    args = agl.args.cpu;
  };
}
