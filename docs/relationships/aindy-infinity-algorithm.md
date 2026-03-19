---
title: "How A.I.N.D.Y. Uses the Infinity Algorithm"
description: "Masterplan Infinite Weave knowledge base entry: How A.I.N.D.Y. Uses the Infinity Algorithm. Part of the AI-native ecosystem founded by Shawn Knight."
canonical_url: "https://www.the-master-plan.com/"
layout: default
---

# How A.I.N.D.Y. Uses the Infinity Algorithm

**UP:** [Masterplan Infinite Weave](../masterplan-infinite-weave.md)
**Entity A:** [A.I.N.D.Y.](../entities/aindy.md) | **Entity B:** [Infinity Algorithm](../entities/infinity-algorithm.md)

---

## Overview

A.I.N.D.Y. (Augmented Intelligence Network for Development and Yield) implements the Infinity Algorithm as its core task scoring and prioritization engine. The relationship is direct and foundational: the Infinity Algorithm defines *what is worth doing*, and A.I.N.D.Y. is the system that *executes* those decisions, stores their results, and feeds outcomes back into future scoring cycles.

The two are not independent components that happen to coexist — the Infinity Algorithm is the decision logic that A.I.N.D.Y. operationalizes. Without the Infinity Algorithm, A.I.N.D.Y. is a capable productivity system with no prioritization intelligence. Without A.I.N.D.Y., the Infinity Algorithm is a formula with no execution layer.

---

## Inputs

When A.I.N.D.Y.'s task endpoint receives a task, the `TaskInput` schema collects:

| Variable | Description |
|---|---|
| `time_spent` | Estimated or actual hours |
| `task_complexity` | 0–1 scale |
| `skill_level` | 0–1 scale |
| `ai_utilization` | 0–1 scale (fraction of work AI handles) |
| `task_difficulty` | 0–1 scale |
| (Expanded version also accepts) | `intensity`, `ai_quality`, `quality`, `value`, `priority`, `urgency`, `cost`, `risk`, `switch_penalty`, `reuse_gain`, `learning_gain`, `network_gain` |

---

## Process

1. A task is submitted via the FastAPI endpoint (`POST /create_masterplan` or task-specific routes in `main_router.py`).
2. A.I.N.D.Y.'s `calculation_services.py` calls `calculate_twr()`, which computes:
   - **LHI** (Level of Human Interaction): `time × (α₁·intensity + α₂·skill) × (1 + α₃·complexity)`
   - **AIU_eff** (Effective AI Lift): `min(1, aiu × (0.5 + 0.5·ai_quality))`
   - **t_eff** (Effective Time): `time × (1 - β₁·AIU_eff) × (1 + β₂·switch_penalty)`
   - **Utility**: near-term payoff (value × quality × priority/urgency modifiers) + compound payoff (reuse + learning + network gains)
   - **Burden**: `t_eff × (1 + κ₁·difficulty) + κ₂·risk + κ₃·cost_hours`
   - **TWR**: `utility / (burden + ε)`
3. The TWR score is returned alongside diagnostic sub-scores (LHI, AIU_eff, t_eff, utility, burden).
4. Optimization feedback is generated based on the score relative to a target: "Too much effort — consider using more AI tools" or "Consider applying more focused human effort."
5. The result is stored as a `CalculationResult` in PostgreSQL via the persistence layer.

---

## Outputs

- **TWR score** — a single number representing this task's value-per-burden ratio
- **Diagnostic breakdown** — LHI, AIU_eff, t_eff, utility, burden as individual signals
- **Optimization recommendation** — actionable text feedback
- **Database record** — `calculation_results` table entry in PostgreSQL
- **Future:** Genesis AI session outputs (confidence, inferred domains, inferred phases) are intended to feed forward into TWR input estimation — this feedback loop is not yet implemented as of March 2026

---

## What A.I.N.D.Y. Contributes

A.I.N.D.Y. provides:
- The API layer that accepts task inputs and returns scored results
- The persistence layer (PostgreSQL) that stores calculation history
- The frontend (React 19) that surfaces results to the user
- The Genesis conversational AI that could (in future) inform TWR parameter estimation
- The Memory Bridge integration that can store significant TWR events as memory traces

---

## What the Infinity Algorithm Contributes

The Infinity Algorithm provides:
- The mathematical logic for translating task parameters into a prioritization score
- The compounding model (reuse gain, learning gain, network gain) that makes long-term ecosystem growth calculable
- The human-AI balance framework (LHI vs AIU_eff) that operationalizes the Duality of Progress philosophy in code
- The optimization feedback logic that makes the score actionable

---

## What Happens When Combined

When A.I.N.D.Y. and the Infinity Algorithm are fully integrated:

1. A user describes a task to the Genesis conversational AI.
2. Genesis infers task parameters (complexity, priority, AI utilization, confidence) from the conversation.
3. These inferred parameters feed `calculate_twr()` automatically.
4. The TWR score ranks the task against the user's current workload.
5. A.I.N.D.Y. presents a prioritized Masterplan — not just a task list, but a scored execution queue.
6. Completed tasks feed results back into the scoring model, improving future estimates.

As of March 2026, Genesis and TWR run in parallel without a data connection between them (noted as a gap in the repository analysis). The intended feedback loop is the next major integration milestone.

---

## Links

- [A.I.N.D.Y.](../entities/aindy.md)
- [Infinity Algorithm](../entities/infinity-algorithm.md)
- [Memory Bridge](../entities/memory-bridge.md) — stores TWR calculation results as memory traces
- [Masterplan Infinite Weave](../masterplan-infinite-weave.md)

---

*Source: `A.I.N.D.Y_Build docs/The Infinity Algorithm.txt`, `Infinity Algorithim_Expanded.txt`, `A.I.N.D.Y. Repository Analysis.txt`*
