# Agent Skills Catalog

Authoritative list of skills for agent loading. Each entry points to a `SKILL.md` with activation
criteria and instructions.

For a human-readable overview, see [README.md](README.md).

## Skills

## Mandatory Catalog Loading

- Before selecting or loading any skill, scan the skills directory for
  available `SKILL.md` files.
- Resolve candidate skills from this catalog, then load the relevant
  `SKILL.md` file or files before proceeding.

## Usage

- Load skills from this catalog when the agent needs specialized guidance.
- Follow the instructions in each `SKILL.md`; do not duplicate content here.
- Keep references in this file and README links in sync when adding or removing skills.

## Troubleshooting

### SKILL.md MarkdownLint Errors

When updating `SKILL.md` frontmatter, be aware of these common linting culprits:

- **MD023 (Heading start left)**: If you use a YAML block scalar (`>-`) for the `description` without padding,
  `markdownlint` may parse the frontmatter closure `---` as a Setext heading element.
  **Fix:** Always ensure there is at least one blank line before the closing `---` in the frontmatter.
- **MD034 (No bare URLs)**: URLs placed naked inside block strings will trigger this error.
  **Fix:** Wrap all URLs in `<>` (e.g., `<https://github.com/...>`) within the description field.
