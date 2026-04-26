# AGENTS.md

Persistent single-source truth for autonomous agent behavior.

For general project invariants see [README.md](README.md).

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

## Persistent Memory & Context Files

Read and merge these when operating inside corresponding sub-directories or repo root (order = precedence):

- `FACTS.mmd` (Root canonical fact store and project mindmap)
- `AGENTS.mmd` and `FLOWS.mmd` (Root canonical diagrams, flows, and booting sequence visualizations)
- `CONSTRAINTS.mzn` (Formal constraint declarations: scheduler-theoretic bounds, budget protocol, and loop arrest)
- [`.github/AGENTS.md`](.github/AGENTS.md) (Directory-specific health and agent guidance)
- [`.github/copilot-instructions.md`](.github/copilot-instructions.md) (Domain context and IDE constraints)
- [`.github/skills/AGENTS.md`](.github/skills/AGENTS.md) to discover the available
  skill catalog before interpreting the user request
- [`.vscode/AGENTS.md`](.vscode/AGENTS.md) (command permissions and tasks)
- Any other directory-specific `AGENTS.md` or `AGENTS.mmd` (which must be followed for sequence booting instructions),
  or `SKILL.md` in ancestor, then current directory tree

## Core Agent Execution Protocol

Autonomous agents operating in this repository MUST adhere to the core loading protocols
and execution logic defined in [AGENTS-RUNTIME.md](AGENTS-RUNTIME.md).

## Required References

- Project overview & install: [README.md](README.md)
- Agent configuration & conventions: [.github/copilot-instructions.md](.github/copilot-instructions.md)
- Workflow navigation: [.tours/getting-started.tour](.tours/getting-started.tour)
- Latest org baseline: <https://github.com/Cogni-AI-OU/.github/blob/main/AGENTS.md>

## Example Structure for New/Updated AGENTS.md Files

```markdown
# AGENTS.md  (subdir-specific)

## Setup & Environment Invariants

- ...

## Key Files & Context Injection

- ...

## Agent Directives (Contract Style)

- Role, then invariants, then ...
- NEVER ...
- MUST ...

## Testing & Verification Gates

- ...

## Troubleshooting Matrix

> signature error / smell
- root-cause vector
- isolation steps
- verified fix + prevention

## Final Assurance Gates

- Keep this file entropy-pruned and up-to-date.
- Inject full content into every sub-agent context.
- For latest version see:
  <https://github.com/Cogni-AI-OU/.github/blob/main/AGENTS.md>
- For latest standard see: <https://agents.md/>


## References

- Main documentation: [README.md](README.md)
