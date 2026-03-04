import Bun from "bun";
await Bun.build({
  entrypoints: ["src/index.ts"],
  outdir: "dist",
});
