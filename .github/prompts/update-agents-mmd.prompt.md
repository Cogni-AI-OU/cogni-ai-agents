---
name: update-agents-mmd
description: Analyzes, updates, or validates an agent's cognitive logic (.agent.mmd) against its instructions
  (.agent.md) and global context (AGENTS.md, AGENTS.mmd, FLOWS.mmd)
---

# Agent Logic and State Machine Synchronization Prompt

**Goal**: Validate, create, or update the target agent's \`.agent.mmd\` (Mermaid flow diagram) by fully simulating its
cognitive framework boot sequence and ensuring absolute alignment with global orchestration rules and the agent's
localized \`.agent.md\`.

## 1. Boot Sequence Simulation (Context Intake)

Before generating or validating any logic, you MUST read, ingest, and process the following layered hierarchy:

1. **Global Invariants**: \`AGENTS.md\` (root directory fact store), \`AGENTS.mmd\`, and \`FLOWS.mmd\`. This defines the
   system-wide orchestration bounds, shared booting sequences, and standard flow abstractions.
2. **Local Agent Contract**: The target agent's \``agent-name`.agent.md\`. Extract all Persona rules, Initialization
   Sequences, Cognitive Framework Constraints (e.g., Metacognitive Rewind, Checkpoints), and Workflow Phases.
3. **Current Diagram State**: \``agent-name`.agent.mmd\` (if it exists).

*Acknowledge your understanding of these specific files in your first output before proceeding.*

## 2. Logic Synthesis & Verification

Ensure the generated diagram and underlying logic incorporates:

- **Initialization Sequence**: Does the diagram explicitly start with \`Boot[Initialization Sequence]\` including steps
  like Contract Alignment, Skill/Instruction Loading, and State-Compression?
- **Cognitive Framework Checkpoints**: Are there nodes for *Mini-Checkpoints*, *Hard Checkpoints*, and the
  *Metacognitive Rewind Gate* for contradiction handling?
- **Adversarial Flow & Quality Gates**: Is the *Design-It-Twice* protocol and *Extrinsic Escalation/Fail-Safe* modeled?
- **Global Protocol Subgraphs**: Does the diagram explicitly include or reference subgraphs from \`FLOWS.mmd\`?
  The agent diagram must not treat these as black boxes but as integrated structural gates.
- **Workflow Transitions**: Identify boundaries between Phase 0 (Intent), Phase 1 (Execution), Phase 2 (Verification),
  and Phase 3 (Termination).
- **Escalation Protocol**: Ensure failure branches explicitly map to the "Extrinsic Escalation Gate" instead.
  Every agent diagram MUST incorporate the full logic to ensure a complete cognitive brain dump.

## 3. Output Generation

Based on the synthesis:

1. **Validation Report**: Detail any contradictions or missing constraints between the \``agent-name`.agent.md\` and the
   modeled states. List any rules from \`AGENTS.md\`/\`FLOWS.mmd\` omitted.
2. **Mermaid Generation**: Generate the complete, syntactically valid Mermaid diagram (\`flowchart TD\`) modeling the
   target agent's decision logic and boot cycle.
   - **Source-Mapped Subgraphs**: You MUST group the flowchart logic into subgraphs named after their source files
     (e.g., \`subgraph AGENTS_md\`, \`subgraph FLOWS_mmd\`, \`subgraph Local_Contract\`) to ensure total clarity on the
     provenance of each instruction and operational block.
   - Replace or create the \``agent-name`.agent.mmd\` file with the updated diagram.

## Execution Directive

*Prompt Invocation Start:*
"I am beginning the cognitive framework simulation. I will parse \`AGENTS.md\`, \`AGENTS.mmd\`, and \`FLOWS.mmd\` to
establish the baseline orchestration constraints, map the target agent's \`.agent.md\`, and compute the delta for
generating the updated \`.agent.mmd\` structure."
