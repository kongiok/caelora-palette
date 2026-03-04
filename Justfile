set shell := ["bash", "-c"]

default:
    just --list

install:
    bun install

build:
    bun run src/index.ts

test:
    bun test
