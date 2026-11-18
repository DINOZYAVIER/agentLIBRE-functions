# DinoBot on E2B on the CPU, for 8 GB of RAM (AGL-050, D14-D16).
{ agl, ... }:
{
  description = "for 8 GB of RAM (a CPU Function): Gemma 4 E2B, 32K of context";
  policy = agl.policies.agentLIBRE;
  model = agl.models."gemma-4-e2b-qat" // {
    context = 32768;
    args = agl.args.cpu;
  };
}
