# Caelora Palette

Palette of planet that I imagined.

## Techstack

- **TypeScript**: programming language.
- **Bun**: bundler, testing.
- **Valibot**: schema validation library.
- **Just**: development flow.

## Structure

```file
 ├/
 ├──LICENSE
 ├──README.md
 ├──src/
 │  ├──core/    # Logics
 │  │  ├──factory.ts    # Multiple exports
 │  │  └──shades.ts     # Color shades
 │  ├──flavors/ # Single Source of Truth
 │  │  ├──aether.toml
 │  │  └──flavor.spec.toml
 │  ├──types/   # Types & Schemas
 │  │  └──flavor.type.ts
 │  ├──utils/   # Utilities
 │  └──index.ts # Entry point
 └──tsconfig.json

```
