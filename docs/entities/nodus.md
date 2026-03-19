---
title: "Nodus"
description: "Masterplan Infinite Weave knowledge base entry: Nodus. Part of the AI-native ecosystem founded by Shawn Knight."
canonical_url: "https://www.the-master-plan.com/"
layout: default
---

# Nodus

**UP:** [Masterplan Infinite Weave](../masterplan-infinite-weave.md) | **Part of:** [Masterplan Infinite Weave](../masterplan-infinite-weave.md)

---

## Definition

Nodus is a custom programming language created by Shawn Knight in approximately one week of intensive agentic AI-assisted development. It is a complete compiled language with a lexer, parser, AST, bytecode compiler, optimizer, module loader, stack-based virtual machine, coroutine scheduler, and 48 built-in functions. Nodus is designed as an embeddable scripting and workflow language, intended to become the internal execution layer for [A.I.N.D.Y.](./aindy.md).

---

## Classification

Programming language / execution layer. Nodus is a language artifact of the Masterplan Infinite Weave ecosystem and the primary subject of the forthcoming 2026 Codex Case Study Series.

---

## Part of

[Masterplan Infinite Weave](../masterplan-infinite-weave.md)

---

## Components

The Nodus implementation pipeline, as analyzed:

| Module | Purpose | Size |
|--------|---------|------|
| `lexer.py` | Tokenization (regex-based) | 236 lines |
| `parser.py` | Recursive-descent AST construction | 798 lines |
| `ast/ast_nodes.py` | Typed dataclass node hierarchy | 325 lines |
| `symbol_table.py` | Scope resolution and upvalue detection | 245 lines |
| `compiler.py` | Two-pass bytecode code generation | 997 lines |
| `optimizer.py` | Peephole and constant-fold optimization | 330 lines |
| `module_loader.py` | Resolution, caching, dependency graph | 878 lines |
| `vm/vm.py` | Stack VM + all 48 built-in implementations | 2,415 lines |
| `scheduler.py` | Coroutine round-robin scheduler | 225 lines |
| `embedding.py` | NodusRuntime public embedding API | — |

**Additional tooling:** `NodusRuntime` embedding API (with sandbox: `max_steps`, `timeout_ms`, `allowed_paths`), bytecode cache, snapshot manager, REPL.

**Build artifacts:** `tiny_lang.py`, `tiny_lang_2.py`, `tiny_lang_3.py`, `tiny_lang_4.py`, `tiny_vm.py`, `tiny_vm_lang.py`, `tiny_vm_lang_functions.py` — iterative development versions showing the language's evolution across build sessions (Codex shifts 1–36, Claude shifts 1–3).

---

## Relationships

**Uses:**
- Agentic AI tools (Claude, Codex) as the primary development tools during the one-week build
- Python as the implementation language (the VM and all tooling are written in Python)

**Powers:**
- Future [A.I.N.D.Y.](./aindy.md) workflow scripting and task routing
- Embedded scripting for sandbox execution within Masterplan workflows

**Depends on:**
- Python 3 runtime
- `pyo3` (planned) for future Rust integration layer

**Outputs to:**
- Bytecode (compiled from Nodus source)
- VM execution results
- Future: 2026 Codex Case Study Series (documenting the build process)

---

## Function

Nodus demonstrates a core thesis of the Masterplan Infinite Weave: that an individual using agentic AI tools can compress the time to produce genuinely complex technical artifacts to an extreme degree. Building a complete language — with lexer, parser, AST, compiler, optimizer, VM, and scheduler — is a project that typically requires months of work by a trained compiler engineer. Nodus was produced in approximately one week by someone using AI tools collaboratively, treating the session logs as the "Codex shifts" that document each increment.

The language itself is designed with an embedding API that sandboxes execution (step budget, timeout, path allowlist), making it suitable for use inside a larger AI system that needs to run untrusted workflow scripts safely. This directly addresses a future A.I.N.D.Y. need: users defining custom execution workflows that the system runs on their behalf.

The Nodus build process is also a concrete example of the Duality of Progress principle: AI didn't write the language; it was built through a high-intensity human-AI collaboration where the architect's direction, design decisions, and debugging discipline shaped every component.

---

## Example

The build process proceeded through 36 "Codex shifts" and 3 "Claude shifts" — each shift representing a focused work session producing a meaningful increment of the language. By Codex shift 36, the language had a working stack VM, function calls, scope resolution, coroutine scheduling, 48 built-in functions, a bytecode cache, and an embedding API. The iterative `tiny_lang.py` through `tiny_lang_4.py` files show the language's grammar and semantics solidifying across sessions.

The Nodus repository analysis (five-dimension review: Architecture, Performance, Documentation, Bugs, Security) confirmed the VM sandbox as "solid" — no eval/exec in the execution path, path allowlists enforced, step and time limits implemented.

---

## Related Concepts

- [A.I.N.D.Y.](./aindy.md) — Nodus is designed to become A.I.N.D.Y.'s internal scripting layer
- [2025 ChatGPT Case Study Series](./2025-chatgpt-case-study-series.md) — The series that established the documentation format the 2026 Codex Case Study Series will follow
- [Duality of Progress](./duality-of-progress.md) — The philosophical spine that frames Nodus as proof-of-execution, not just theory

---

## Source Context

- GitHub: [Masterplanner25/Nodus](https://github.com/Masterplanner25/Nodus)
- Build logs: `Masterplanner25/Nodus/` (Codex shift 1–36, Claude shift 1–3, Part 1–9)
- Analysis: `Nodus Analysis_v1.0.txt`
- Bootstrapping guidance: `Bootstrapping.txt`
- Language files: `tiny_lang.py`, `tiny_vm.py`, `tiny_vm_lang.py`, `tiny_vm_lang_functions.py`
- Future documentation: 2026 Codex Case Study Series (forthcoming)
