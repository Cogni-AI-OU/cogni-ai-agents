---
name: runtime-boot-dump
description: Instructs the agent to analyze and document the runtime boot sequence it just
  completed, outputting a Mermaid sequenceDiagram capturing the loaded context and challenges.
---

# Runtime Boot Sequence Analysis & Dump

**Goal**: Meticulously detail the actual runtime initialization sequence you *just completed* upon
activation. Do not execute new boot steps; rather, reflect on the context loading and orchestration
rules you have already processed for this session.
Output a high-fidelity Mermaid `sequenceDiagram` illustrating your exact execution trace.

## 1. Post-Boot Reflection

Review the memory trace of your activation sequence:

- Which files were successfully discovered and loaded prior to this prompt?
- Which tools were actively invoked to gather this context (e.g., file reads, searches, terminal commands)?
- Which files were missing or structurally inaccessible?
- Did you encounter submodule initialization issues or permission constraints?
- Did you face any contextual contradictions or missing dependencies?
- Which default or fallback behaviors were invoked during your boot phase?

## 2. Analysis & Synthesis

Analyze the expected versus actual trace of your completed boot process:

- Identify missing local contracts or conflicting global invariants you noticed upon activation.
- Catalog the exact chronological sequence of actions and state changes you implicitly or explicitly performed.
- Highlight any conditional branching (e.g., loading supplementary instructions only because a specific project
  state was detected).
- Note any intrinsic challenges, context window limitations, or deviations from your idealized boot sequence.

## 3. Output Generation

Generate a complete `sequenceDiagram` detailing the trace of your activation.

- **Formatting Requirements**:
  - Use `sequenceDiagram` with `autonumber`.
  - Define explicit participants that represent the logical entities interacted with (e.g., Workspace,
    Terminal, Memory System, AI Core).
  - Utilize `opt`, `alt`, or `loop` blocks to accurately model conditional or iterative context discovery.
  - Use `Note over` or `Note right of` blocks to highlight specific challenges, missing files, context
    truncations, or executed fallbacks.
  - Ensure the diagram is syntactically valid and accurately reflects a temporal timeline.

## Execution Directive

*Prompt Invocation Start:*
"I am initiating a retrospective analysis of my completed runtime boot sequence. I will trace the
outcomes of my activation, document any challenges faced, and output the final Mermaid sequence
diagram showing what actually happened."
