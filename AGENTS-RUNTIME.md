# AGENTS-RUNTIME.md

Persistent single-source truth for autonomous agent behavior in runtime environments.

## Agents Catalog

This repository is the source of truth for Cogni AI agent files.
Agent files live at the repository root so they are accessible directly when
this repo is cloned into `.github/agents`.

- [**Cogni AI Architect**](cogni-ai-architect/cogni-ai-architect.agent.md):
  Primary autonomous coding agent with critical thinking, robust problem-solving, and context-aware resource management.
- [**Cogni AI DevOps**](cogni-ai-devops/cogni-ai-devops.agent.md):
  Elite autonomous DevOps and Site Reliability Engineering agent focusing on task automation, CI/CD pipeline precision, and infrastructure-as-code.
- [**Cogni AI Elite**](cogni-ai-elite/cogni-ai-elite.agent.md):
  Elite autonomous systems architect engineered for structural perfection and recursive problem decomposition.
- [**Cogni AI Fact Ops**](cogni-ai-fact-ops/cogni-ai-fact-ops.agent.md):
  Autonomous fact operator responsible for maintaining canonical fact files and information consistency.
- [**Cogni AI Context7 Ops**](cogni-ai-context7-ops/cogni-ai-context7-ops.agent.md):
  Autonomous context gathering agent specialized in retrieving and filtering documentation from the Context7 service.
- [**Cogni AI Keeper**](cogni-ai-keeper/cogni-ai-keeper.agent.md):
  Canonical fact custody and mindmap stewardship kernel for structured knowledge management.
- [**Cogni AI Reviewer**](cogni-ai-reviewer/cogni-ai-reviewer.agent.md):
  Elite autonomous code reviewer for PR analysis, quality enforcement, and architectural invariant verification.
- [**Cogni AI Weaver**](cogni-ai-weaver/cogni-ai-weaver.agent.md):
  Canonical flow custody and diagram stewardship kernel specializing in flowchart and dependency memory.

## Skills

You must load the skills relevant to the user prompt, inferred intent,
and planned work into the current context:

- **[ansible](.github/skills/ansible/SKILL.md)**: How to run and manage Ansible operations safely and prevent hangs
- **[context-aware-ops](.github/skills/context-aware-ops/SKILL.md)**: Intelligent resource management with size checking and filtering
- **[fact-writer](.github/skills/fact-writer/SKILL.md)**: Guidance for writing, structuring, and maintaining verifiable project
  fact files without contradictions
- **[gh](.github/skills/gh/SKILL.md)**: GitHub CLI (`gh`) operations for issues, PRs, workflows, and API
- **[git](.github/skills/git/SKILL.md)**: Guide for using git with non-interactive, safe operations
- **[git-expert](.github/skills/git-expert/SKILL.md)**: Advanced Git operations including interactive rebasing, reflog recovery,
  bisecting, complex conflict resolution, and history manipulation
- **[github](.github/skills/github/SKILL.md)**: GitHub specific features and collaborative practices
- **[github-actions](.github/skills/github-actions/SKILL.md)**: Diagnosing and debugging failing GitHub Actions workflows
- **[github-script](.github/skills/github-script/SKILL.md)**: Advanced use cases and examples for using actions/github-script
- **[mermaid](.github/skills/mermaid/SKILL.md)**: Guide for creating and maintaining stable Mermaid.js diagrams
- **[mermaid-beta](.github/skills/mermaid-beta/SKILL.md)**: Guide for creating and maintaining experimental Mermaid.js beta diagrams
- **[minizinc](.github/skills/minizinc/SKILL.md)**: Expert MiniZinc modeling for constraint satisfaction and combinatorial problems
- **[molecule](.github/skills/molecule/SKILL.md)**: Molecule testing workflows for Ansible roles
- **[pdf](.github/skills/pdf/SKILL.md)**: PDF file inspection, object-level editing, and lossless size reduction
- **[pre-commit](.github/skills/pre-commit/SKILL.md)**: Using pre-commit to validate code formatting, linting, and security checks
- **[robust-commands](.github/skills/robust-commands/SKILL.md)**: Resilient command execution with automatic fallbacks and error recovery
- **[shell](.github/skills/shell/SKILL.md)**: Efficient shell command execution with timing, timeouts, and best practices
- **[skill-writer](.github/skills/skill-writer/SKILL.md)**: Generate or update SKILL.md files for GitHub Copilot coding agents
- **[vim-ex](.github/skills/vim-ex/SKILL.md)**: Non-interactive file editing with Vim Ex mode (in favor of sed, shell or Python editing)

### Structural Invariant

- **Agents Location**: Agents are located directly in the root directory of this repository.

## Subagent Delegation

- **Spawning Sub-agents**:
  If subagent delegation is enabled in the runtime, agents are encouraged to spawn new sub-agents to handle complex, multi-step, or parallelizable tasks. This promotes modular problem-solving and efficient resource utilization.
