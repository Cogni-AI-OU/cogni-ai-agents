---
name: runtime-boot-self-test
description: >
  Analyze and document the runtime boot sequence, execute a capability
  self-test, and output a Mermaid sequenceDiagram capturing the loaded
  context and challenges.
---

# Runtime Boot Sequence Analysis & Self-Test Dump

**Goal**: Meticulously detail the initialization sequence you *just completed* upon
activation. Reflect on context loading and orchestration rules already processed.
Output a high-fidelity Mermaid `sequenceDiagram` of your execution trace, and a
Mermaid `mindmap` of the available instructions, protocols, skills, and MCP capabilities.

## 1. Post-Boot Reflection

Review the memory trace of your activation sequence:

- What environment context was detected (e.g., OS, VS Code, Dev Container, Codespaces, GitHub Actions)?
- What is the current state of the persistent memory system?
- Which files were successfully discovered and loaded prior to this prompt?
- Which tools and MCP servers were actively recognized as available?
- Which tools were actively invoked to gather this context (e.g., file reads, searches, terminal commands)?
- Which files were missing or structurally inaccessible?
- Did you encounter submodule initialization issues, structural errors, or permission constraints?
- Did you face any contextual contradictions or missing dependencies?
- Which default or fallback behaviors were invoked during your boot phase?

## 2. Analysis & Synthesis

Analyze the expected versus actual trace of your completed boot process:

- Identify missing local contracts, conflicting global invariants, or missing tools you noticed upon activation.
- Catalog the exact chronological sequence of actions and state changes you implicitly or explicitly performed.
- Highlight any failed tool invocations (e.g., `ENOENT` directory errors for uninitialized workspaces).
- Note any conditional branching (e.g., loading supplementary instructions only because a specific project
  state was detected).
- Note any intrinsic challenges, context window limitations, token truncations,
  or deviations from your idealized boot sequence.

## 3. Output Generation

Generate a complete `sequenceDiagram` of your activation, plus a `mindmap`
categorizing the loaded capabilities.

- **Context Tree (Flowchart)**:
  - Use `flowchart LR` to output a hierarchical map of the project structure
    **specifically as the agent currently perceives it in context**.
  - Map nodes using directory-styled shapes (e.g., `Workspace[/"Workspace"/] --> Memories[/"/memories/"/]`)
    to ensure stable rendering across all platforms.
  - Include roots for `Workspace`, `/memories/`, `.github/skills`, and `MCP Servers`.
  - Explicitly mark missing or inaccessible resources (e.g., `style Memories fill:#ffcccc,stroke:#ff0000`).
- **Diagnostic Health Matrix (Radar Chart)**:
  - Use `radar-beta` to output a 1-10 health/confidence score of your current capabilities.
  - Define variables like `FileSystem_Access`, `Terminal_Execution`, `Memory_Persistence`, `GitHub_API`, and `Context_Capacity`.
  - Output your self-assessed readiness curve.
- **Internal State Transitions (State Diagram)**:
  - Use `stateDiagram-v2` to map the internal boot phases you just executed.
  - Map states like `[*] --> Initialize`, `Context_Gathering`, `Submodule_Check`, `Ready`, or `Error_State`.
  - Include any retry loops or fallback transitions you had to take.
- **Mindmap Requirements**:
  - Use `mindmap` with a central root node (e.g., `root((Context & Capabilities))`).
  - Group available capabilities into major branches (e.g., `Instructions`, `Skills`, `Protocols`, `MCP_Servers`).
  - For the `Instructions` and `Skills` branches, explicitly list the exact filenames
    (e.g., `markdown.instructions.md`, `mermaid/SKILL.md`) of all files actually loaded, rather than vague names.
  - Include organizational protocols and MCP capabilities identified during boot.
- **Sequence Diagram Requirements**:
  - Use `sequenceDiagram` with `autonumber`.
  - Define explicit participants that represent the logical entities interacted with (e.g., Workspace,
    Terminal, Memory System, AI Core).
  - Utilize `opt`, `alt`, or `loop` blocks to accurately model conditional or iterative context discovery.
  - Use `Note over` or `Note right of` blocks to highlight specific challenges, missing files, context
    truncations, or executed fallbacks.
  - Ensure the diagram is syntactically valid and accurately reflects a temporal timeline.
- **Troubleshooting (Ishikawa/Fishbone) [Conditional]**:
  - IF you encountered any failures, missing files, or blocked operations during boot, use `ishikawa-beta`
    to perform a root-cause analysis of the primary failure.
  - Map the main failure as the head, with branches for `Environment`, `Permissions`, `Context_Limits`, or `Tooling`.

## 4. Self-Test Diagnostics

Perform a rapid diagnostic self-test to verify your operational readiness:

- Verify your basic file system interaction (e.g., confirm `AGENTS.md` is strictly accessible).
- Verify terminal and shell command execution availability.
- Check the health and responsiveness of your persistent memory tier (e.g., reading/writing a test note in `/memories/session/`).
  **CRITICAL: Use the native `memory` tool/API if available, rather than `touch`/`mkdir` in bash,**
  **as `/memories/` may be virtualized.**
- Verify any MCP server integrations are active and responsive.

Include a **Self-Test Report** at the end of your response detailing the PASS/FAIL status of these core capabilities.

## Execution Directive

*Prompt Invocation Start:*

"I am initiating a retrospective analysis of my completed runtime boot sequence
and performing an operational self-test. I will trace the outcomes of my
activation, execute diagnostic checks, document any challenges faced, and output
the final Mermaid sequence diagram showing what actually happened, along with a
mindmap of available capabilities and a self-test report. **CRITICAL: Ensure
you explicitly include your active Agent Name (e.g. 'architect') in
the title of the generated report or GitHub issue so it is instantly identifiable.**"
