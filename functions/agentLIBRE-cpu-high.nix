# DinoBot on E4B on the CPU with a longer context, on a faster CPU (AGL-050, D14-D16).
{ agl, ... }:
{
  description = "for 16 GB of RAM and more and a faster CPU (a CPU Function): Gemma 4 E4B, 64K of context";
  policy = agl.policies.agentLIBRE;
  model = agl.models."gemma-4-e4b-qat" // {
    context = 65536;
    args = agl.args.cpu;
  };
}
