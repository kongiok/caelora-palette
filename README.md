# Caelora Palette

Palettes of the planet that I imagined.

## TechStack

### Development Environments

- **Just**: A command runner to manage project tasks and automate development workflows.
- **Bun**: A fast all-in-one JavaScript runtime, test runner, and bundler.
- **GitHub Actions**: A CI/CD platform to automate testing and deployment processes.
- **JSR**: A modern package registry that natively supports TypeScript and ESM.

### Runtime Environments

- **TypeScript**: A strongly typed programming language that ensures color logic accuracy.
- **TOML**: A human-readable configuration format used for defining structured color data.
- **colord**: A library for color manipulation and conversion.
- **zod**: A schema validation library.
- **remeda**: A utility library for functional programming.

## Structure

```structure
 ├/               --> project root, where the journey begins
 ├──Justfile      --> development flow
 ├──README.md
 ├──src           --> features
 │  ├──core       --> Logic & Schema
 │  ├──utils      --> utilities
 │  ├──exports  --> export colours in multiple ways
 │  ├──flavors    --> single source of truth
 │  │  ├──aether.toml       --> flavor starts with flavor name
 │  │  └──flavor.spec.toml  --> spec TOML file
 │  └──index.ts   --> bundler entries
 └──LICENSE
```

## Architecture

```mermaid

graph TB
    %% Nodes Definitions
    ProcessStart@{ shape: circ, label: "Program Start"}
    Data@{ shape: lean-r, label: "flavors/*.toml" }

    Validation@{ shape: rect, label: "Zod Validation"}

    %% Main Data Objects
    PlainColor@{ shape: stored-data, label: "Plain Color Object"}
    ColorShades@{ shape: stored-data, label: "Generated Shades Object"}

    %% Logic Steps
    LoopSeedColor@{ shape: notch-pent, label: "Iterate Colors"}
    CreateColorShades@{ shape: rect, label: "Adjust L Channel"}
    ConvertColor@{ shape: rect, label: "Convert to Output (CSS/JSON)"}

    Result@{ shape: lean-l, label: "dist/ Artifacts"}
    ProcessEnd@{ shape: dbl-circ, label: "Program End"}

    %% Graph Connections
    ProcessStart --> Data
    Data --> Validation
    Validation --> PlainColor

    %% Splitting Paths
    PlainColor -- "Direct Conversion" --> ConvertColor

    %% The Generation Engine (Subgraph adds visual grouping)
    subgraph Generation_Engine [Shade Generation Loop]
        direction TB
        PlainColor -- "Map Seeds" --> LoopSeedColor
        LoopSeedColor -- "xN (50-950)" --> CreateColorShades
        CreateColorShades --> ColorShades
    end

    ColorShades --> ConvertColor
    ConvertColor --> Result
    Result --> ProcessEnd
```
