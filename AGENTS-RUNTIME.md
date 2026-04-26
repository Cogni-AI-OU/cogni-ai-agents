# AGENTS-RUNTIME.md

Persistent single-source truth for autonomous agent behavior in runtime environments.

## Agents Catalog

This repository is the source of truth for Cogni AI agent files.
Agent files live at the repository root so they are accessible directly when
this repo is cloned into `.github/agents`.

| File | Purpose |
| ---- | ------- |
| [cogni-ai-architect.agent.md](cogni-ai-architect/cogni-ai-architect.agent.md) | Primary Cogni AI Architect autonomous coding agent |
| [cogni-ai-devops.agent.md](cogni-ai-devops/cogni-ai-devops.agent.md) | Elite autonomous DevOps and Site Reliability Engineering agent |
| [cogni-ai-elite.agent.md](cogni-ai-elite/cogni-ai-elite.agent.md) | Cogni AI Elite autonomous systems architect |
| [cogni-ai-fact-ops.agent.md](cogni-ai-fact-ops/cogni-ai-fact-ops.agent.md) | Autonomous Fact Operator responsible for canonical fact files |
| [cogni-ai-context7-ops.agent.md](cogni-ai-context7-ops/cogni-ai-context7-ops.agent.md) | Autonomous Context7 Ops responsible for gathering and filtering documentation |
| [cogni-ai-keeper.agent.md](cogni-ai-keeper/cogni-ai-keeper.agent.md) | Canonical fact custody and mindmap stewardship kernel |
| [cogni-ai-reviewer.agent.md](cogni-ai-reviewer/cogni-ai-reviewer.agent.md) | Elite autonomous code reviewer |
| [cogni-ai-weaver.agent.md](cogni-ai-weaver/cogni-ai-weaver.agent.md) | Canonical flow custody and diagram stewardship kernel |

## Context Files

Read and merge these when operating inside corresponding sub-directories or repo root (order = precedence):

- `AGENTS.mmd` and `FLOWS.mmd` (Root canonical diagrams, flows, and booting sequence visualizations for agents repo)
- `CONSTRAINTS.mzn` (Formal constraint declarations: scheduler-theoretic bounds, budget protocol, and loop arrest)
- `FACTS.mmd` (Root canonical fact store for agents repo)
