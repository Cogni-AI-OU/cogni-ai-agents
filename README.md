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
- **AI Agent Configurations**: AGENTS.md, skills, and prompts for automated development
- **Coding Instructions**: Language-specific standards in `.agents/instructions/`
- **Pre-commit Hooks**: Linting and validation tooling
- **Code Tours**: Guided walkthroughs for repository onboarding

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
   - [.agents/AGENTS.md](.agents/AGENTS.md) for repository-specific agent guidance

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

- `cogni-ai-architect.agent.md`: primary agent configuration (source of truth for agent consumers)
- `AGENTS.md`: agents catalog and repository-specific guidance
- `.github/`: default templates, workflows, instructions, prompts, skills, and agent configuration
- `.tours/`: guided walkthroughs for repository onboarding
- `README.md`: repository overview and local development workflow

## AI Agents

This repository is the **source of truth** for Cogni AI agent configurations.
Agent files live in the **repository root** so that when this repo is added
via git subtree at `.github/agents`, consumers receive them directly at
`.github/agents/cogni-ai-architect/cogni-ai-architect.agent.md` (and `.github/agents/AGENTS.md`).

### Agent Configuration Files

| File/Directory | Audience | Purpose |
| -------------- | -------- | ------- |
| [cogni-ai-architect/cogni-ai-architect.agent.md](cogni-ai-architect/cogni-ai-architect.agent.md) | Orchestrators | Primary Cogni AI Architect agent definition |
| [.agents/AGENTS.md](.agents/AGENTS.md) | All agents | Agents catalog and repository-specific workflows |
| [.agents/copilot-instructions.md](.agents/copilot-instructions.md) | Copilot | Coding standards and project context |
| [cogni-ai-architect/](cogni-ai-architect/) | Orchestrators | Local agent configs for this template repo |
| [.agents/skills/](.agents/skills/) | All agents | Reusable capabilities (git, GitHub Actions, etc.) |
| [.agents/instructions/](.agents/instructions/) | Linters & agents | Language-specific code standards |

### Using This Repository via Git Subtree

Other projects initialize this repo via git subtree **directly at `.github/agents`**:

```bash
git subtree add --prefix=.github/agents https://github.com/Cogni-AI-OU/cogni-ai-agents.git main --squash
```

After initialization the consumer project gets:

- `.github/agents/cogni-ai-architect/cogni-ai-architect.agent.md` — the primary agent
- `.github/agents/AGENTS.md` — the agents catalog

See also:

- [`AGENTS.md` file format specification](https://agents.md/)
- [Best practices for using GitHub Copilot](https://gh.io/copilot-coding-agent-tips).

## GitHub Actions

For documentation on GitHub Actions workflows, problem matchers, and CI/CD
configuration, see [.github/GITHUB-WORKFLOWS.md](.github/GITHUB-WORKFLOWS.md).

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
