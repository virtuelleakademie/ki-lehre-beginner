# CLAUDE.md

This file provides guidance to Claude Code when working with this repository.

## Project Overview

A Quarto website for the **Beginner Workshop** in the "KI in der Lehre" series. This is the first of three workshops (Beginner → Intermediate → Advanced), plus a Refresher course. Content is in German, targeting staff at Swiss universities (BFH).

**Workshop Focus**: "Was ist generative KI, und was bedeutet sie für das Lernen?"

**Duration**: 3 hours

## Related Workshops

All workshops live in the parent directory `../`:

- `ki-lehre-beginner/` (this workshop)
- `ki-lehre-intermediate/` (builds on beginner: learning science + agent design)
- `ki-lehre-advanced/` (builds on intermediate: building educational AI tools)
- `ki-lehre-refresher/` (standalone overview with research foundations)

## Build Commands

```bash
quarto preview          # Live preview on port 8808
quarto render           # Build site to /docs/
```

## Project Structure

```text
ki-lehre-beginner/
├── _quarto.yml                     # Main configuration
├── index.qmd                       # Welcome/landing page
├── workshop/
│   ├── index.qmd                   # Schedule & learning objectives
│   ├── einstieg/                   # Opening activity
│   └── diskussion/                 # Closing discussion
├── slides/
│   ├── index.qmd                   # Slides overview
│   ├── grundlagen/                 # How LLMs and chatbots work
│   ├── chatbots-grenzen/           # Possibilities and limitations
│   ├── chatbots-einfluss-lernen/   # Impact on learning
│   ├── ki-tool-lehre/              # AI as teaching tool
│   ├── chatbot-agenten/            # Chatbots as agents
│   ├── ki-datenschutz/             # Data protection
│   └── ai-higher-ed/               # AI in higher education
├── exercises/
│   ├── index.qmd                   # Exercises overview
│   ├── prompten-lernen/            # Learning effective prompting
│   ├── denken-delegieren/          # Thinking vs. delegating
│   ├── ki-tools-lehre/             # AI tools for teaching
│   └── miro-board/                 # Collaborative workspace
├── resources/
│   ├── resources.qmd               # Guidance documents
│   ├── prompting/                  # Advanced prompting strategies
│   ├── kompetenz-erwerben/         # How competence is acquired
│   └── produktive-anstrengung/     # Productive struggle
├── notes/                          # Internal planning (not rendered)
│   ├── 00-beginner-workshop-structure.qmd
│   ├── 01-*.qmd                    # Activity designs, facilitator guides
│   ├── 02-intermediate-connection.qmd
│   └── 03-revised-workshop-proposal.qmd
├── assets/
│   ├── images/
│   └── pdfs/
├── styles/
│   ├── custom.scss
│   └── styles.css
├── scripts/                        # JavaScript (copy-prompt.js)
├── _extensions/                    # Quarto extensions
│   ├── timer/                      # Countdown timer shortcode
│   └── custom-callout/             # Custom callout styling
└── docs/                           # Rendered output (GitHub Pages)
```

### Content Organization

- Every content page is named `index.qmd` inside its own subdirectory
- No content files at root level (except `index.qmd` landing page)
- The `notes/` directory contains internal planning documents (not rendered)
- Slides use RevealJS format

## Writing Conventions

### Language

German with Swiss spelling conventions:

- Use "ss" instead of "ß" (e.g., "weisst" not "weißt", "muss" not "muß")
- Address readers with informal "du" form, not formal "Sie"
- No emojis in content

### Formatting

- Do not use em-dashes ("---" or "—"). Use colons or restructure sentences instead.
- Do not use dividing lines ("---" on its own line) except in YAML headers
- Ensure blank line above all markdown lists
- Use sentence case for headings (capitalize first word only)

### Links

- Internal links: use relative paths to `.qmd` files (e.g., `[text](workshop/index.qmd)`)
- External links: Quarto adds external link icons automatically

## Custom Callouts

Defined in `_quarto.yml`. Use in content like:

```markdown
::: {.experiment}
## Title
Content here
:::
```

### Available Types

| Type | Purpose | Color |
|------|---------|-------|
| `experiment` | Hands-on tasks ("Deine Aufgabe") | Magenta |
| `individual` | Solo work ("Einzelarbeit") | Magenta |
| `group` | Group work ("Gruppenarbeit") | Magenta |
| `demonstration` | Instructor-led demo | Grey |
| `scenario` | Context/situation description | Grey |
| `reflect` | Reflection prompts ("Reflexion") | Gold |
| `key-point` | Important takeaways ("Kernaussage") | Gold |
| `pro-tip` | Helpful tips (collapsible) | Gold |
| `source-check` | Source verification prompts | Gold |
| `warning` | Cautions ("Achtung") | Magenta |
| `prompt` | Copyable chatbot prompts | Grey |

## Timer Extension

Add countdown timers to slides or pages:

```markdown
{{< timer 5 >}}
```

The number is minutes.

## RevealJS Slides

Slides in `slides/` use RevealJS format. Key options in YAML header:

```yaml
format:
  revealjs:
    theme: default
    slide-number: true
    preview-links: auto
    footer: "Footer text"
    navigation-mode: vertical
    controls: true
    progress: true
```

### Slide Syntax

```markdown
## Slide Title

Content for this slide.

## Next Slide

More content.
```

## Workshop Content Themes

### Core Topics (from revised proposal)

1. **KI verstehen** (experiential focus)
   - Text generation: how LLMs predict "next word"
   - Tool usage: web search, file analysis, code execution
   - "Thinking": chain-of-thought reasoning

2. **BFH Chatbot Landscape**
   - Policy: what's permitted (BFH KI-Policy)
   - Tools: Copilot, ChatGPT, Claude recommendations

3. **Extended Cognition**
   - Offloading vs. outsourcing distinction
   - Key insight: same AI use can be productive for experts, problematic for learners

### Key Concepts

- **Cognitive Offloading**: Externalizing to reduce working memory while you continue thinking
- **Cognitive Outsourcing**: Transferring the actual cognitive work to an external system
- **The Learning Paradox**: AI makes tasks easier but can impair learning if students outsource what they should practice

## Navigation Structure

### Navbar

- Workshop: links to `workshop/index.qmd`
- Slides: links to `slides/index.qmd`
- Übungen: links to `exercises/index.qmd`
- Dokumente: dropdown with BFH policy and guidance PDFs
- Knowledge Base: external link to virtuelleakademie.ch

### Sidebars

Three sidebars configured in `_quarto.yml`:

- Workshop sidebar: follows workshop flow (slides and exercises interleaved)
- Slides sidebar: all slide decks
- Übungen sidebar: all exercises

## Adding New Content

### New Slide Deck

1. Create `slides/new-topic/index.qmd` with `format: revealjs`
2. Add to appropriate sidebar in `_quarto.yml`

### New Exercise

1. Create `exercises/new-exercise/index.qmd`
2. Add to sidebar contents in `_quarto.yml`

### New Resource

1. Create `resources/new-resource/index.qmd`
2. Add to render list in `_quarto.yml` if needed

## Deployment

- Output renders to `docs/`
- Deployed via GitHub Pages from the `docs/` folder
- Run `quarto render` before committing to update the built site
