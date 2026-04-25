# Example Ops Template

[![PR Reviews][pr-reviews-image]][pr-reviews-link]
[![License][license-image]][license-link]

Template repository for applying Cogni-AI-OU operations standards, reusable workflows,
prompt catalogs, coding instructions, and agent guidance to a project repository.
This template mirrors the structure and conventions of the
[Cogni-AI-OU/.github](https://github.com/Cogni-AI-OU/.github) organization repository.

## What This Template Provides

This template repository includes the standard operations infrastructure for
Cogni-AI-OU projects:

### Key Features

- **GitHub Actions Workflows**: CI/CD and automation (OpenCode, pre-commit, etc.)
- **AI Agent Configurations**: AGENTS.md/AGENTS.mmd and skills for automated development
- **Pre-commit Hooks**: Linting and validation tooling

### How to Use

1. Create a new repository from this template
2. Customize the configuration files for your project
3. Remove or modify sections that don't apply to your use case

## Getting Started

1. Install the local validation tooling:

   ```bash
   pip install pre-commit
   pip install -r .devcontainer/requirements.txt
   ```

2. Run the repository checks:

   ```bash
   pre-commit run -a
   ```

3. Review the core guidance:
   - This README for repository scope and the local workflow
   - [.tours/getting-started.tour](.tours/getting-started.tour) for a guided walkthrough
   - [AGENTS.md](AGENTS.md) for repository-specific agent guidance

## Development

### Setup

```bash
# Install pre-commit hooks
pip install pre-commit
pre-commit install

# Install Python dependencies (for devcontainer)
pip install -r .devcontainer/requirements.txt
```

### Testing and Validation

```bash
# Run all pre-commit checks
pre-commit run -a

# Run specific checks
pre-commit run markdownlint -a
pre-commit run yamllint -a
pre-commit run black -a
pre-commit run flake8 -a
```

## Project Layout

- `cogni-ai-architect/cogni-ai-architect.agent.md`: primary agent configuration (source of truth for agent consumers)
- `cogni-ai-devops/cogni-ai-devops.agent.md`: elite autonomous DevOps and SRE agent
- `cogni-ai-elite/cogni-ai-elite.agent.md`: elite agent configuration
- `cogni-ai-keeper/cogni-ai-keeper.agent.md`: canonical fact custody and mindmap stewardship kernel
- `cogni-ai-reviewer/cogni-ai-reviewer.agent.md`: elite autonomous code reviewer
- `cogni-ai-weaver/cogni-ai-weaver.agent.md`: canonical flow custody and diagram stewardship kernel
- `AGENTS.md`: agents catalog and repository-specific guidance
- `AGENTS.mmd`: supplemental project diagrams, flows, and visualizations
- `FLOWS.mmd`: root canonical timelines, flows, and dependency graphs
- `FACTS.mmd`: root canonical fact store and project mindmap
- `.github/`: default templates, workflows, and GitHub-specific configurations
- `.github/agents/`: AI agent configurations (cloned in CI)
- `.github/instructions/`: AI agent instructions (cloned in CI)
- `.github/skills/`: reusable capabilities and skills (cloned in CI)
- `.tours/`: guided walkthroughs for repository onboarding
- `README.md`: repository overview and local development workflow

## AI Agents

This repository is the **source of truth** for Cogni AI agent configurations.
Agent files live in the **repository root** so that when they are cloned
into `.github/agents`, consumers receive them directly at
`.github/agents/cogni-ai-architect/cogni-ai-architect.agent.md` (and `.github/agents/AGENTS.md`).

### Agent Configuration Files

| File/Directory | Audience | Purpose |
| -------------- | -------- | ------- |
| [cogni-ai-architect/cogni-ai-architect.agent.md](cogni-ai-architect/cogni-ai-architect.agent.md) | Orchestrators | Primary Cogni AI Architect agent definition |
| [cogni-ai-devops/cogni-ai-devops.agent.md](cogni-ai-devops/cogni-ai-devops.agent.md) | DevOps/SREs | Elite autonomous DevOps and SRE agent |
| [cogni-ai-elite/cogni-ai-elite.agent.md](cogni-ai-elite/cogni-ai-elite.agent.md) | Orchestrators | Cogni AI Elite autonomous systems architect |
| [cogni-ai-keeper/cogni-ai-keeper.agent.md](cogni-ai-keeper/cogni-ai-keeper.agent.md) | Keepers | Canonical Fact Custody & Mindmap Stewardship Kernel |
| [cogni-ai-reviewer/cogni-ai-reviewer.agent.md](cogni-ai-reviewer/cogni-ai-reviewer.agent.md) | Reviewers | Elite autonomous code, PR analysis, and zero-defect enforcer |
| [cogni-ai-weaver/cogni-ai-weaver.agent.md](cogni-ai-weaver/cogni-ai-weaver.agent.md) | Weavers | Canonical Flow Custody & Diagram Stewardship Kernel |
| [AGENTS.md](AGENTS.md) | All agents | Agents catalog and repository-specific workflows |
| [.github/copilot-instructions.md](.github/copilot-instructions.md) | Copilot | Coding standards and project context |
| [cogni-ai-architect/](cogni-ai-architect/) | Orchestrators | Local agent configs for this template repo |
| [.github/skills/](.github/skills/) | All agents | Reusable capabilities (git, GitHub Actions, etc.) |

### Installation

To set up the required agents, instructions, and skills in your repository:

```bash
git clone --depth=1 https://github.com/Cogni-AI-OU/cogni-ai-agents .github/agents
git clone --depth=1 https://github.com/Cogni-AI-OU/cogni-ai-agent-instructions .github/instructions
git clone --depth=1 https://github.com/Cogni-AI-OU/cogni-ai-agent-skills .github/skills
```

After cloning the repositories the consumer project gets:

- `.github/agents/cogni-ai-architect/cogni-ai-architect.agent.md` — the primary agent
- `.github/agents/AGENTS.md` — the agents catalog

See also:

- [`AGENTS.md` file format specification](https://agents.md/)
- [Best practices for using GitHub Copilot](https://gh.io/copilot-coding-agent-tips).

## Available Agents

### [Cogni AI Architect agent](cogni-ai-architect/cogni-ai-architect.agent.md)

Enhanced agent with critical thinking, robust problem-solving, and context-aware resource management. Features:

- Automatic file size checking before viewing
- Smart filtering for long outputs
- Command installation fallback logic
- Self-improvement capabilities
- Never-give-up problem-solving approach

### [Cogni AI DevOps](cogni-ai-devops/cogni-ai-devops.agent.md)

Elite autonomous DevOps and Site Reliability Engineering agent. Focuses on task automation,
CI/CD pipeline precision, infrastructure-as-code (IaC), and resolving deployment challenges.

### [Cogni AI Elite](cogni-ai-elite/cogni-ai-elite.agent.md)

Elite autonomous systems architect engineered for structural perfection and recursive problem decomposition.

### [Cogni AI Keeper](cogni-ai-keeper/cogni-ai-keeper.agent.md)

Canonical fact-custody kernel and mindmap steward.
Deep module for fact management via VCS-aligned plain-text mindmaps.

### [Cogni AI Reviewer](cogni-ai-reviewer/cogni-ai-reviewer.agent.md)

Elite autonomous agent for code review, PR analysis, and enforcing zero-defect quality and architectural invariants.

### [Cogni AI Weaver](cogni-ai-weaver/cogni-ai-weaver.agent.md)

Canonical flow-custody kernel and diagram steward. Specializes in flowchart memory:
decision chains, causal flows, dependencies, state transitions, timelines.

## How to Use Custom Agents

### Installation

- Download the desired agent configuration file (`*.agent.md`) and add it to your repository.
- Use the Copilot CLI for local testing: [Copilot CLI](https://gh.io/customagents/cli).
- Merge the agent configuration file into the default branch of your repository.
- Access installed agents through the VS Code Chat interface, Copilot CLI,
  or assign them in Copilot Coding Agent (CCA).

For more details, see:

- [About custom agents](https://gh.io/customagents)
- [Custom Agents Documentation](https://gh.io/customagents/config).
- [Create custom agents](https://docs.github.com/en/copilot/how-tos/use-copilot-agents/coding-agent/create-custom-agents)
- [Copilot CLI](https://gh.io/customagents/cli)
- [GitHub Awesome Copilot repository](https://github.com/github/awesome-copilot)
- [Supported Models](https://docs.github.com/en/copilot/reference/ai-models/supported-models)

## Customizing development environment

See: [Customizing the development environment for GitHub Copilot coding agent][customize-env].

## Firewall

See: [Customizing or disabling the firewall for GitHub Copilot coding agent][firewall-config].

### Firewall allowlist

See [FIREWALL.md](FIREWALL.md) for recommended hosts to allow and the official guidance link.

### MCP Server Setup

Some agents require MCP servers to function. The Claude Code Action provides
built-in MCP servers for GitHub operations (`github_comment` and
`github_inline_comment`).

#### Custom MCP Servers

You can add custom MCP servers for additional integrations.

**Important notes:**

- File-based config cannot use GitHub Actions secrets (`${{ secrets.* }}`). Use
  inline config for secrets.
- HTTP-based MCP servers (using `"type": "http"`) may work with inline config
  but can fail with file-based config due to how the Claude Code process loads
  external files.
- **Current configuration**: This repository uses inline `--mcp-config` for the
  GitHub Copilot MCP endpoint (see `.github/workflows/claude-review.yml`) as it's
  an HTTP-based server. File-based config is available for custom command-based
  MCP servers if needed.

Follow the instructions in the agent's documentation to configure the necessary MCP servers.

## Security Considerations

### Claude Code Agent Git Access

When using Claude Code (triggered via `@claude` in comments), the agent has broad
git access via `Bash(git:*)` to enable autonomous code changes. This requires
proper repository safeguards.

**Access controls in place:**

- Only trusted users (OWNER, MEMBER, COLLABORATOR, CONTRIBUTOR) can trigger Claude
- PR/issue authors can only trigger Claude on their own content
- External contributors are explicitly blocked

**Required repository protections:**

Repository administrators must configure:

1. **Branch protection rules** on main/protected branches requiring PR reviews
   and status checks
2. **GitHub audit log monitoring** for `github-actions[bot]` commit activity
3. **CODEOWNERS** files for sensitive directories requiring specific approvals

**Best practices:**

- Review Claude's commits before merging PRs
- Use draft PRs for Claude's work requiring explicit promotion
- Monitor workflow logs for unexpected behavior
- Rotate API keys periodically

## Troubleshooting

### Claude Not Responding to Comments

If Claude isn't responding to your comments, verify:

1. **Permissions**: You must have one of these roles:
   - Repository OWNER, MEMBER, COLLABORATOR, or CONTRIBUTOR
   - PR/issue author (on your own content only)

2. **Trigger conditions** for PR review comments:
   - Your comment contains `@claude`, OR
   - You're replying to a comment from `github-actions[bot]` (Claude's responses), OR
   - You're replying to a comment that contains `@claude`

The workflow uses a two-stage filter to prevent abuse while allowing natural
conversation flow. Check the Actions tab in your repository for workflow run details
if Claude doesn't respond as expected.

## GitHub Actions

For documentation on GitHub Actions workflows, problem matchers, and CI/CD
configuration, see [.github/workflows/README.md](.github/workflows/README.md).

## Organization Profile

For information about Cogni AI OÜ, our mission, and how to collaborate, see our
[organization profile](https://github.com/Cogni-AI-OU/.github/blob/main/profile/README.md).

## Contributing

See [.github/CONTRIBUTING.md](.github/CONTRIBUTING.md) for organization-wide
contribution guidelines and expectations for issues, pull requests, and CI.

## References

- [How to Use the .github Repository](https://www.freecodecamp.org/news/how-to-use-the-dot-github-repository/)
- [Creating a Default Community Health File](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/creating-a-default-community-health-file)

## License

This repository is licensed under MIT. See [LICENSE](LICENSE) for the full text.

<!-- Named links -->

[pr-reviews-image]: https://img.shields.io/github/issues-pr/Cogni-AI-OU/example-ops-template?label=PR+Reviews&logo=github
[pr-reviews-link]: https://github.com/Cogni-AI-OU/example-ops-template/pulls
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-link]: https://tldrlegal.com/license/mit-license
[customize-env]: https://docs.github.com/en/copilot/how-tos/use-copilot-agents/coding-agent/customize-the-agent-environment
[firewall-config]: https://gh.io/copilot/firewall-config
