# AGENTS-RUNTIME.md

Persistent single-source truth for autonomous agent behavior in runtime environments.

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

## Mandatory Skill Loading Protocol

- Before any tool invocation, code delta, or execution plan, MUST read
  [`.github/skills/AGENTS.md`](.github/skills/AGENTS.md) when present.
- Treat [`.github/skills/AGENTS.md`](.github/skills/AGENTS.md) as the
  authoritative catalog of available skills; follow its links to candidate
  `SKILL.md` files.
- Deterministically route user intent to skills in this order: exact
  skill-name match, exact alias/tag match, normalized phrase match,
  description/activation keyword match.
- If multiple skills match, load all non-overlapping relevant skills ordered
  by the routing score above; if two skills conflict, the more task-specific
  `SKILL.md` wins.
- If the user request includes domain terms that plausibly map to a skill,
  MUST inspect the best-matching `SKILL.md` before proceeding.
- If no skill matches after catalog inspection, proceed without a skill and state that no relevant skill was found.

**Maintenance invariant**:

- After every complex task completion or troubleshooting victory,
  immediately update the nearest relevant AGENTS.md, AGENTS.mmd, or SKILL.md.
- On recurring failure, immediately re-evaluate
  and update the nearest relevant AGENTS.md, AGENTS.mmd, or SKILL.md.
- On discovery of superior workaround, new efficiency primitive, or explicit user directive,
  immediately update the nearest relevant AGENTS.md, AGENTS.mmd, or SKILL.md.
- On detection of ambiguous steps or unclear instructions,
  immediately update the nearest relevant AGENTS.md, AGENTS.mmd, or SKILL.md.

**Creation / Update Triggers (Hard Gate)**:

- Agent-focused guidance that materially compresses cognitive load or failure surface.
- Resolution of recurring task failures or repeated edge-case collapses.
- Discovery of dense, reusable execution primitives during development or debugging.
- User injects new rules, exemplars, or feedback intended for persistent agent memory.
- Existing documentation entropy exceeds threshold, then extract & prune to peak-density form.
- Functionality requires domain-specific knowledge that must survive context windows.

**Hardened NEVER List**:

- NEVER embed one-time discoveries or transient hacks.
- NEVER duplicate code-level comments or obvious steps.
- NEVER hardcode environment-specific values; use generic placeholders with explicit semantics.
- NEVER include beginner exposition or obvious statements.
- NEVER bloat with prose; enforce one-liner density + imperative syntax only.
- If guidance is purely disciplinary, route to dedicated `SKILL.md` instead.

**Writing invariants (Prodigy-Level)**:

- Assume ninja-level proficiency across project spectrum.
- Embed quantitative gates (+20% fidelity delta, <1h MTTR analog, zero ambiguity).
- Every bullet carries measurable payload: role, then invariants, then context, then exemplars, then schema, then NEVER/MUST-NOT,
  then verification loops.
- Favor tables, checklists, and contract-style boundaries over linear text.
- Zero scaffolding. Maximal information-theoretic density. Surgical imperative syntax.

## Core Agent Execution Protocol (Mandatory for All Forks)

**Pre-execution reverse-prompting activation**:

- **CI/CD Failure Escalation**: When CI/CD pipelines or automated checks fail, do NOT immediately
  patch local configuration files or create suppressions to hide errors. Investigate the execution
  environment and upstream dependencies. If the root cause originates outside the repository scope,
  state the required upstream fix clearly and halt rather than introducing local entropy.
- Read, assimilate, and strictly enforce the invariants defined in the main `AGENTS.md`,
  along with any directory-specific `AGENTS.md` and `AGENTS.mmd` (if it exists, containing
  supplemental project diagrams, flows, and the booting sequence), related files,
  `.github/copilot-instructions.md`,
  and autonomously load any relevant `.instructions.md` rules, `FACTS.mmd` context,
  or `SKILL.md` workflows before formulating a strategy.
- Declare required inputs, missing context, edge cases, and optimal strategy before any tool invocation or code delta.
- Snapshot current problem state in one entropy-minimized sentence.
- Enumerate risks against classic-mistakes matrix and Top-10 Risks List.
- Apply noise-pruning filter + single-variable delta rule for all experiments.
- Complete the Mandatory Skill Loading Protocol, then load the highest-confidence relevant `SKILL.md` files before execution.

**Strategic vs tactical default**:

- Always default to strategic programming (Ousterhout).
- Invest 10-20% per cycle in design/refactoring for long-term velocity.
- Tactical tornadoes trigger immediate rollback + root-cause ablation.

**Complexity annihilation primitives** (apply at every layer):

- Design-it-twice mandate on non-trivial decisions.
- Divide-and-conquer + controlled simplification.
- DRY + Boy Scout Rule + Rule-of-Three on every duplication smell.
- Information hiding / deep modules over shallow pass-throughs.
- Pull complexity downwards; define errors out of existence where possible.
- Refactor mercilessly via Fowler catalog before feature addition.

**Verification scaffold (Neurosymbolic)**:

- Chain-of-Verification (CoV) + self-consistency majority vote on every output.
- Unit, then integration, then system regression sequence before any merge.
- Minimal reproducible example builder for every failure isolation.
- Trust-but-verify: replace every assumption with logs/assertions/runtime inspection.
- Post-action: blameless root-cause ablation + lesson injection into persistent memory.

**Debug & Troubleshooting Engine**:

- Stabilize, then reproduce, then isolate via divide-and-conquer + single-variable delta.
- Never patch symptoms; fix root via 5-Whys until systemic.
- Instrument targeted breakpoints; prune non-contributory variables first.
- Maintain runbooks for recurring failure signatures.

**Orchestration Models** (select via task cardinality):

- **Fork**: byte-identical context clone for bounded subtasks.
- **Teammate**: persistent peer with isolated tools/memory.
- **Worktree**: fully parallel independent streams with fork-join synchronization.

**Termination invariants**:

- All TODOs empirically verified.
- Quality, security, performance gates satisfied.
- User objective resolved at target fidelity (+20% over prior baseline).
- AGENTS.md/AGENTS.mmd/SKILL.md updated if new reusable primitive discovered.

## GitHub Actions Runtime

When executing autonomously within a GitHub Actions environment, adhere strictly to these
interaction constraints:

### OpenCode PR Context & Response Routing

**Context & Targeting Invariants**:

- **Extract Context**: Parse the `## Pull Request Context` block containing `**Base Branch:**` dynamically.
- **Dynamic PR Targeting**: ALWAYS target this explicitly provided **Base Branch** when creating/updating PRs.

**Response Detection & Routing**:
Check `github.event_name` and payload to identify trigger source:

- **General PR comment** (`issue_comment`):
  - Condition: `if: ${{ github.event.issue.pull_request }}`
  - Reply Method: `gh pr comment`
- **Issue comment** (`issue_comment`):
  - Condition: `if: ${{ !github.event.issue.pull_request }}`
  - Reply Method: `gh issue comment`
- **Inline code review** (`pull_request_review_comment`):
  - Reply Method: `gh api repos/{owner}/{repo}/pulls/{pr}/comments/{comment_id}/replies -f body="..."`

**Routing Invariants**:

- **Symmetric Routing**: ALWAYS reply via the exact originating channel. NEVER cross threads.
- Parse `github.event.comment.id` and `in_reply_to_id` to maintain thread continuity.

### Branch Sync Policy (No Rebase During Runtime)

When the prompt asks to "pull" or "sync with base" in GitHub Actions runtime,
the agent MUST integrate remote changes with a merge commit workflow.

- **MUST NOT** run any rebase-based update command during runtime.
- **FORBIDDEN**: `gh pr update-branch --rebase`, `git pull --rebase`,
  `git rebase`, or any history rewrite that changes commit SHAs.
- **MUST** use pull-with-merge semantics: `git pull --no-rebase`.
- **MUST** preserve remote branch compatibility for post-run auto PR/push logic.

**Execution Steps (strict order)**:

1. Determine PR base/head from context (`## Pull Request Context`, `gh pr view`).
2. Ensure work is on the PR head branch (not detached HEAD).
3. Sync head branch from remote with merge semantics:
   `git pull --no-rebase origin <head-branch>`.
4. If base changes must be integrated into head, merge base explicitly:
   `git fetch origin <base-branch> && git merge --no-ff origin/<base-branch>`.
5. Resolve conflicts, commit merge if required, then push normally (no force).

**Verification Gate (required before push)**:

- Confirm no rebase command was executed in this run.
- Confirm `git log --oneline --graph -n 10` shows merge topology
  (no rewritten linearized history from rebase).
- Proceed with normal `git push` only after these checks pass.

### General Constraints

- **Contextual Continuity**: Maintain conversation context within the originating thread.
- If replying to an inline comment, your response MUST appear as a reply in that same thread.

### GitHub Runtime Decision Policy

- **Default to Best Practice:** Implement the most recommended path autonomously when multiple options exist.
- **Document Trade-offs:** Capture unresolved decisions, explicit options, and impacts in the PR description.
- **Never Stall:** Proceed immediately with safe defaults. Request preference feedback in the PR instead of waiting.
- **Report Defensively:** Present recommended option first; list alternatives only if they alter scope or risk.

## Required References

- Project overview & install: [README.md](README.md)
- Agent configuration & conventions: [.github/copilot-instructions.md](.github/copilot-instructions.md)
- Workflow navigation: [.tours/getting-started.tour](.tours/getting-started.tour)
- Latest org baseline: <https://github.com/Cogni-AI-OU/.github/blob/main/AGENTS.md>
