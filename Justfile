set shell := ["bash", "-c"]

default:
    just --list

install:
    bun install

build:
    bun run src/build.ts

test:
    bun test
