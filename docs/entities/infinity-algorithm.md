---
title: "Infinity Algorithm"
description: "Masterplan Infinite Weave knowledge base entry: Infinity Algorithm. Part of the AI-native ecosystem founded by Shawn Knight."
canonical_url: "https://www.the-master-plan.com/"
layout: default
---

# Infinity Algorithm

**UP:** [Masterplan Infinite Weave](../masterplan-infinite-weave.md) | **Part of:** [Masterplan Infinite Weave](../masterplan-infinite-weave.md)

---

## Definition

The Infinity Algorithm is a multi-variable optimization formula and decision system developed by Shawn Knight that scores any task by its Time-to-Wealth Ratio (TWR) — a composite measure of the value produced per unit of time-equivalent burden, accounting for human effort, AI utilization, quality, risk, cost, and compounding returns (reuse, learning, and network gain).

---

## Classification

Optimization formula / execution decision engine. The Infinity Algorithm is the mathematical and logical spine of the Masterplan Infinite Weave ecosystem.

---

## Part of

[Masterplan Infinite Weave](../masterplan-infinite-weave.md)

---

## Components

**Core Constructs:**

- **LHI (Level of Human Interaction):** Composite of time invested × focus intensity × skill level × complexity factor. Represents the true cost of human effort on a task.
- **AIU_eff (Effective AI Utilization):** Blends AI usage fraction with AI output quality, capped at practical limits. Represents how much AI actually lifts or replaces human effort.
- **t_eff (Effective Time):** Raw time adjusted downward by AI lift and upward by context-switching penalty.
- **Utility:** Near-term value (outcome value × quality × priority × urgency) plus compound payoff (reuse gain + learning gain + network gain).
- **Burden:** Effective time adjusted for difficulty, plus risk and cost converted to time-equivalents.
- **TWR Score:** `utility / (burden + ε)` — higher is better; more value per unit of time-equivalent burden.

**Decision Logic:**
- Task ranking: Sort all candidate tasks by TWR score; prefer higher TWR within time constraints
- Dynamic optimization: If difficulty is high and quality is low → increase AI utilization or add review loops; if risk is high → add mitigation step and re-score
- Portfolio balancing: Enforce minimum floors for learning gain and network gain to keep compounding alive

---

## Relationships

**Uses:**
- Human input variables (time, intensity, skill, complexity, difficulty, AI utilization, quality, value, priority, urgency, cost, risk, context-switch penalty, reuse gain, learning gain, network gain)

**Powers:**
- [A.I.N.D.Y.](./aindy.md) — implemented as `calculate_twr()` in `calculation_services.py`
- Task prioritization across all Masterplan workflows
- The [Memory Bridge](./memory-bridge.md) canonical architecture (the Infinity Algorithm is the "recursive spine" that traces link through)

**Depends on:**
- Human assessment of task variables (current implementation requires manual input)
- Future: AI-assisted parameter estimation from Genesis session outputs

**Outputs to:**
- TWR score per task
- Optimization recommendations (e.g., "use more AI tools" or "apply more focused human effort")
- Ranked task lists for execution planning

---

## Function

In practice, the Infinity Algorithm solves the prioritization problem that all knowledge workers face: which tasks are actually worth the effort, given time constraints, AI availability, and compounding returns? Rather than relying on intuition or conventional priority matrices, the algorithm computes a quantitative score that integrates all relevant factors simultaneously.

When Shawn Knight uses the algorithm, it answers questions like:
- Should I write another case study article (high reuse gain, high network gain, low difficulty) or debug a backend route (high task difficulty, lower compound payoff)?
- How much AI assistance is the right amount for this specific task at this skill level?
- What is the real cost of context switching between projects?

The formula ensures that decisions reinforce the ecosystem's compounding growth rather than optimizing for individual task completion in isolation.

---

## Example

For a task with these parameters:
- 5 hours invested, intensity 0.8, skill 0.7, complexity 0.6
- AI utilization 0.7, AI quality 0.8
- Outcome value: high, quality 0.9, priority 0.9
- Reuse gain 0.8 (template creation), learning gain 0.7, network gain 0.6
- Risk low, cost low, minimal context switching

The algorithm produces a high TWR score, flagging this as a high-priority task because the combination of strong AI utilization, high quality outcome, and significant compound payoff (reuse, learning, network) creates disproportionate value relative to the time-equivalent burden.

---

## Related Concepts

- [A.I.N.D.Y.](./aindy.md) — The application that implements and exposes the Infinity Algorithm
- [Memory Bridge](./memory-bridge.md) — Stores optimization insights as persistent memory traces; the Infinity Algorithm is the "recursive spine" through which linked traces are processed
- [Duality of Progress](./duality-of-progress.md) — The article series that explores the human-AI collaboration principles the algorithm encodes

---

## Source Context

- Build docs: `A.I.N.D.Y_Build docs/The Infinity Algorithm.txt`, `Infinity Algorithim_Expanded.txt`, `Infinity Algorithm Refinment.txt`
- Implementation: `AINDY/services/calculation_services.py` (function: `calculate_twr()`)
- Canonical documentation: `docs/architecture/INFINITY_ALGORITHM_CANONICAL.md` (in A.I.N.D.Y. repo)
- Formula versions: `A.I.N.D.Y_Build docs/The Masterplan SaaS/Formula Versions/` (Python, JavaScript, SQL, JSON, TOML)
- Canonical Architecture Model: `A.I.N.D.Y_Build docs/Memory Bridge/Canonical Architecture Model.txt`
