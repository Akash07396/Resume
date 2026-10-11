# Website Research: Reference Analysis and Portfolio Direction

**Prepared:** 2026-10-12  
**Status:** Research only. No application code, dependencies, or existing assets modified.  
**Reference:** https://www.evebouffard.com/  
**Repository inspected:** https://github.com/thesohamdatta/Resume (default branch `main`, HEAD inspected at `fdb4a07ee76692560d1995a596c28e7c7bf0970f`)

## 1. Executive summary

The reference is not a conventional case-study portfolio. It is a living personal website: a work portfolio sits alongside writing, learning notes, opinions, interests, curated references, and experimental visual spaces. The creator describes it as a playground and says it began with a week of personal notes that were used to generate a first version, followed by ongoing edits. That explanation is part of the experience: the site communicates a person with a point of view, not just a list of services.

The most transferable ideas are:
- Start with a clear human voice and a concise statement of what the site is.
- Treat projects as proof, with an image, a short explanation, and a link to the real artifact.
- Let work and thinking reinforce one another, rather than forcing every item into a formal case study.
- Use a consistent structure and content taxonomy so the site can grow without needing a redesign for each new project.
- Show intentionality through hierarchy, typography, spacing, and editorial selection. Do not confuse a large volume of content with visual quality.

**Important scope finding:** the repository named `thesohamdatta/Resume` is a resume-generation engine, not the public portfolio website. Its README describes an evidence-first pipeline for creating one-page resumes from job descriptions. The repository contains LaTeX templates, candidate facts, resume inputs/outputs, research, and documentation. The recursive file tree did not expose a web-app entry point, typical web package manifest, or a website asset folder outside archived resume material. Consequently this report can audit the repository that was supplied, but cannot truthfully claim to have audited the deployed portfolio's React/Next/Vite/etc. implementation or its local assets. The next phase must identify the correct website repository or provide the deployed site URL and source access.

## 2. Reference website analysis

### 2.1 Pages and information architecture

The reference homepage was available to the crawler and linked to two alternate views: `/home/wallpaper` and `/home/text`. The homepage extraction also surfaced links to:
- Work examples and external destinations (YC landing page, YC application, Startup School, QM, Paxel, internship expo, SOTA Zine, The Social Radars).
- Video documentation and talks.
- Study/learning content and written thinking.
- Curated books, tools, people, places, art, brands, films, and other interests.
- Social profiles.
- Changelog and site/design-related resources.

The content page `/study` was extractable and frames its entries as short reports explaining concepts worth knowing, with dates and a concise editorial description. The site exposes `/voice.md` and `/design.md` as readable text-like resources through search/extraction, suggesting a deliberate separation between the rendered presentation and some plain-text/content resources. `/changelog`, `/writing`, `/thinking`, and `/art` could not all be fetched successfully in this run; they should not be treated as verified route content solely based on their labels or the visible navigation.

**Why this works:** different kinds of evidence have a clear home. Work establishes capability; writing shows how the person thinks; curated interests establish taste and context. It turns a website into a useful map of the person.

**Adaptation:** use a small taxonomy, not the reference's full catalogue. For the current project, the first version should likely have Home, Projects, Notes (only if there are publishable notes), About, and Contact. A project detail page may be a reusable template, not a separate hand-crafted layout for every project.

### 2.2 Voice and positioning

The opening uses a friendly greeting and calls the site a playground. It offers a short biographical anchor and a clear design principle: design should achieve its goal, not just look good. It also explains how the site came to exist and positions it as something being explored and improved.

**Why this works:** it gives the visitor a lens for interpreting what follows. The site's tone is distinctive before the visitor reaches a grid of projects. The origin story makes its unconventional breadth feel intentional.

**Adaptation:** write a short, specific introduction in Soham's natural voice, anchored in actual work: building AI software, realtime voice systems, wearable/embedded experiments, and open-source contributions. Do not copy the greeting, phrasing, philosophy, or personal details from the reference. Avoid abstract claims like “building the future” if a direct description of what is being built is clearer.

### 2.3 Project and media presentation

The homepage's “Fun Projects” list contains eight projects in the captured page, with a title, brief contextual sentence, image/screenshot, and outbound link. Supporting media appears in separate groups for videos and books, using thumbnails or cover art to make dense lists scannable.

**Why this works:** images serve as navigation and evidence, rather than decoration alone. The short descriptions state why an item matters. Outbound links let visitors inspect the real result instead of relying on a long sales pitch.

**Adaptation:** show only a handful of strongest projects first. Current evidence in the resume repository suggests possible project candidates such as Aura, Mia, LLM-Council, John/voice AI, Voicecoder, computer-vision work, and Omi contributions. These are candidate-content sources, not proof that the portfolio currently has finished project media or a suitable live demo. Inspect each target repository and capture authentic screenshots, diagrams, hardware photos, test output, and links before choosing what to publish. Mark experiments as experiments and work-in-progress as work-in-progress.

### 2.4 Visual identity, typography and composition

**Verified from extracted content:** the website uses many small images, thumbnails, logos, book covers, project screenshots, and illustrations across numerous content collections. There are alternate homepage views labelled `text` and `wallpaper`. The extracted page also exposed interface labels for visual controls such as image overlay colour, opacity, blend mode, vignette, text weight/size/tracking/line height, image framing, blur, darkening, grayscale, background shader, and finishing. Those labels imply a customizable wallpaper/editor-like experience is present in some part of the site.

**Not fully verified:** exact font families, exact color tokens, spacing values, layout CSS, screenshot-specific visual measurements, responsive breakpoints, and animation curves. The page text and links alone do not establish those details, and a reliable visual comparison across viewport sizes was not completed. Do not treat any specific font or color guess as fact.

**Design principle to adapt:** one coherent visual system can support multiple content types if it establishes strong type hierarchy, a consistent spacing scale, restrained surfaces, and repeatable image treatment. Use whitespace for grouping and pacing. Let a few distinctive details create personality instead of applying effects to every section.

**Adaptation:** choose a small type scale (display, section heading, body, metadata), a restrained neutral base with one considered accent, consistent image ratios, and a clear maximum text width. Set the design direction only after the actual website and existing assets are inspected. Avoid committing to a palette based solely on text extraction.

### 2.5 Art direction and content density

The reference mixes professional work with personal interests and notes. There is a very large volume of material, but it is broken into named sections with jump links, descriptive labels, thumbnails, and date/recency notes. The “study” page uses a short introduction then repeatable titled entries.

**Why this works:** it balances breadth with navigability, making a long page behave more like a set of destinations than an undifferentiated wall of content. Repeatable editorial modules reduce the cognitive load of scanning.

**Trade-off:** the scale of the reference's library is a major part of its identity. Copying that breadth without a comparable archive would make a new site feel empty, or tempt us to invent filler.

**Adaptation:** prefer a short home page with 3–5 selected projects and a compact “currently exploring” section only when the content is real. Add more pages only when there are enough good items to justify them. Do not create fake testimonials, fictional impact statistics, invented case studies, stock “AI lab” imagery, or filler blog cards.

### 2.6 Interaction and motion

**Verified:** the scraped site exposes an editor-like control surface through text labels and alternative display modes. The page's content relies on internal section anchors and outbound links.

**Not verified:** specific hover effects, scroll-triggered animation, route transitions, keyboard behavior, reduced-motion handling, or mobile-specific interactions. The crawler output is not sufficient to make confident claims about those details.

**Adaptation:** keep interaction purposeful. Make project cards and section links easy to understand. Use small hover/focus changes, visible keyboard focus, and subtle transition timing if justified. Add a wallpaper editor or highly interactive ambient experience only if it serves a real purpose and can be implemented accessibly; it is not a prerequisite for a polished portfolio.

### 2.7 Responsive behavior and technical clues

Alternate text/wallpaper paths and the content-rich layout were observable via crawl/extraction. A verified framework, repository, build setup, or exact responsive behavior was not found from public page extraction. The reference's `design.md`, `voice.md`, and changelog-style resources look like deliberately exposed documentation/content endpoints, but the origin of those files and the underlying frontend framework could not be confirmed from this pass.

The crawler's full-page extraction can flatten visual hierarchy, omit interactive states, and misrepresent layout order. A desktop screenshot plus a real mobile viewport inspection would be required before writing detailed CSS implementation notes.

**Adaptation:** responsive behavior must be tested on the actual portfolio: navigation should remain obvious, text should not become too wide or cramped, images should preserve intended crops, and interactive targets should be touch-friendly. Prefer responsive CSS and semantic components over adding a framework or animation library before the existing stack is known.

## 3. Existing project audit

### 3.1 What the supplied repository actually is

Repository: `thesohamdatta/Resume`  
Latest inspected commit: `fdb4a07ee76692560d1995a596c28e7c7bf0970f`  
Latest commit date returned by GitHub: 2026-10-11.

Its README defines the project as a small, evidence-first resume engine that turns a job description and a mode into a one-page PDF. Active areas include:
- `AGENTS.md`, `SPEC.md`, `RESUME_RULES.md`, `DONT.MD`: operating contract, requirements, factuality and resume-quality rules.
- `data/facts.yaml`: canonical candidate facts.
- `content/github/evidence.md` and `content/github/boundaries.md`: technical evidence and claim constraints.
- `pipeline/`: selection, rendering, validation, and build scripts.
- `modes/` and `versions/`: startup, MNC, and referral resume content.
- `templates/v3/`: canonical LaTeX visual template and local font assets.
- `applications/`: role-specific inputs and generated outputs.
- `research/`, `memory/`, and `archive/`: research, durable lessons, and historical material.

This shows a clear evidence-first approach to candidate claims and a repeatable resume pipeline, but it is not the source tree for a web portfolio.

### 3.2 Dependencies and architecture

The inspected tree shows LaTeX source and shell/Python validation scripts, YAML facts and modes, Markdown documentation, and a skills lockfile. The README documents shell entry points such as `pipeline/validate_resume_repo.sh`, `pipeline/test_validate_contract.sh`, `pipeline/build_base_resumes.sh`, and `pipeline/check_run.sh`.

No web-specific `package.json`, frontend `src/` or `app/` root, `public/` asset directory, or JavaScript frontend build configuration was found among the active non-archived files in the repository tree. This is a limited repository-level observation, not a proof that a separate website repo does not exist.

### 3.3 Available content relevant to a personal site

`data/facts.yaml` and `content/github/evidence.md` contain factual summaries that could help a separate website's content planning:
- **Aura:** independent wearable AI work, ESP32-S3 firmware and audio capture details, enclosure design, integrations and backend adaptation. Explicitly under development.
- **AI/ML internship:** computer-vision workflows using TensorFlow, TensorFlow Lite, Google ML Kit, and Android inference.
- **Mia:** local-first TypeScript CLI with model adapters, workflow stages, immutable JSONL state, and verification gates.
- **LLM-Council:** multi-model response comparison/synthesis through an Analyst → Skeptic → Synthesizer flow.
- **John / voice projects:** Android voice client and Python LiveKit agent, realtime voice tools, and tool calling.
- **Voicecoder:** VS Code extension, provider fallback, secure credential storage, and token/cost tracking.
- **Omi open source:** issues, architecture proposals, testing, and contributions with explicit limits on PR merge status.
- **Research/library work:** research support and archive/digitization experience.

These facts can seed project cards and case studies, but the source documents explicitly forbid overstating production status, claiming the whole Omi backend was built from scratch, claiming maintainer/core-contributor status, or turning approved/unmerged PRs into merged work. The eventual website should keep those evidence boundaries.

### 3.4 Existing assets and constraints

The active tree contains bundled font files and LaTeX template assets under `templates/v3/fonts/`; there are also archived resume previews, archived template files, and old application assets. These are document-design assets, not verified website-ready assets. Reusing the font files in a web app would require checking licenses and confirming they match the intended design. No active portfolio image/video collection was found in the supplied repository.

**Reuse:** canonical project facts, public repository links, accurate technical details, and selected writing style lessons where relevant.  
**Do not reuse without review:** archived screenshots, resume template layouts, font assets, or old drafts as if they were web design components.  
**Need from the next audit:** the actual website repository, its package and framework files, current deployed URL, route and component inventory, CSS/design tokens, image/video assets, responsive screenshots, build/test/deployment commands, and any analytics or performance constraints.

## 4. Comparative gap analysis

Because the provided code repository is not the public website repository, this is a comparison between the reference pattern and the site's likely needs based on available candidate material. It is **not** a score of the current deployed site's design.

| Dimension | Reference pattern | What the current evidence supports | Gap / action |
|---|---|---|---|
| Positioning | Strong personal voice and point of view | Facts describe a builder working across AI applications, voice, wearables and open source | Write a succinct introduction using concrete nouns and active verbs |
| Project presentation | Short descriptions plus imagery and external evidence | Multiple projects are documented, but matching polished screenshots are not established | Select 3–5 projects and gather authentic visuals |
| Narrative depth | Many projects, writing, studies and interests | Candidate facts are strong; public-facing explanations still need editorial work | Start with concise project stories, expand only with evidence |
| Visual hierarchy | Many sections but named and scannable | No portfolio CSS or visual design system found in the supplied repo | Audit actual site, then define type/space/layout tokens |
| Content density | Large, evolving personal archive | A smaller curated set of projects is the realistic baseline | Use fewer, better modules; no filler |
| Navigation | Multiple content categories and jump destinations | Current site routes cannot be verified from this repo | Start with simple top-level IA and sensible anchors |
| Motion and interaction | Editable wallpaper-like experience is suggested by exposed controls | Existing app has no web interaction code in inspected repository | Defer advanced interactions; add only after core content/layout |
| Responsive quality | Not confirmed from extraction alone | Current responsive implementation is unknown | Inspect deployed site at desktop/tablet/mobile |
| Technical implementation | Framework not verified | Resume engine uses LaTeX, YAML, shell/Python scripts and Markdown | Get the correct repo before proposing a refactor |

## 5. Design principles worth adapting

1. **Person before catalogue.** Visitors need a direct explanation of what the person builds and cares about before being asked to browse projects.
2. **A project card is a proof link.** Use an authentic visual, a plain-language statement of the problem or purpose, and a link to a real project or demo.
3. **Let the content determine the layout.** Hardware projects may need a large device photo and a system diagram; code tools may work with a terminal capture; open-source work may need a contribution summary and links. Do not force everything into the same image grid.
4. **Create repeatable editorial modules.** Project, note, experiment, and contribution modules can share type and spacing tokens while preserving different media patterns.
5. **Use restraint to create hierarchy.** Consistent spacing, strong type sizes, readable line lengths, intentional image crops, and a small accent palette are more reliable than numerous decorative effects.
6. **Build an expandable content system.** Keep project facts and media paths in a predictable structure so new entries can be added without editing the entire homepage.
7. **Make work status legible.** Labels such as “In progress”, “Prototype”, “Open source”, or “Shipped” can be used when factually accurate; they are especially useful for work that is still being developed.
8. **Do not emulate scale.** The reference's long archive works because it has accumulated material. A smaller, curated site can feel equally intentional.
9. **Accessible polish is polish.** Use semantic structure, keyboard focus, readable contrast, useful alt text, touch-sized controls, and reduced-motion support.
10. **No interaction before comprehension.** Visitors should understand what a project is and where a link leads before animation or visual novelty is considered.

## 6. Recommended creative direction

**Working direction: “A builder’s field notebook”** — a clean, editorial portfolio that presents projects as tangible experiments and shipped work, with a personal voice but without the volume or visual imitation of the reference.

This is a strategic concept, not a final visual design. Validate it against the actual website, assets, and the intended audience in the next phase.

### Visual approach
- Neutral, low-noise background and foreground with one controlled accent, selected after looking at the current identity and actual project screenshots.
- Typography-led opening, using one distinctive display style and a plain, readable body face.
- Tight editorial copy with clear project status and visible external proof links.
- A small set of variable project layouts: image-led for hardware, screenshot-led for software, diagram/architecture-led for technical systems, and text-led for open-source investigations.
- Generous but disciplined vertical spacing; consistent container widths and image ratios.
- Limited animation, used for navigation feedback and subtle state changes rather than spectacle.

### Voice approach
Use short, direct descriptions. For each project answer:
- What is it?
- What does it do or explore?
- What part did Soham actually build or contribute?
- What can the visitor inspect?
- What is its current status?

Avoid invented user numbers, performance claims, launch status, or ownership. The existing `content/github/boundaries.md` should be treated as a source constraint during content writing.

## 7. Proposed site structure

### Initial version
1. **Home** — name/identity, concise positioning, one primary action, a small featured-project selection, current focus, contact and external links.
2. **Projects** — curated index with simple filters only if project count justifies them.
3. **Project detail template** — overview, problem/context, approach, actual contributions, system or design details, screenshots/diagrams, status, relevant links.
4. **About** — concise background, areas of focus, working style, education/experience if relevant, public links.
5. **Contact** — clear email/social link; no form unless there is a real need and a supported implementation.

### Later, only when content exists
- **Notes / Writing** for genuine published reflections, research notes, or technical writeups.
- **Open source** as a dedicated page when contributions deserve more depth than a project card.
- **Experiments** for small prototypes that are clearly labelled as experiments.
- **Now** or **Current focus** only if it will be maintained.

The homepage should remain useful with only three good projects. It should not require dozens of cards to look complete.

## 8. Initial design-system recommendations

These are conceptual starting points, not final numeric tokens. Define exact values after inspecting the actual site.

### Layout
- One standard content container and a small set of narrow/wide variants.
- A consistent spacing scale based on a simple unit.
- A responsive grid with explicit desktop/tablet/mobile behavior.
- Reusable section headers with title, optional intro, and optional “view all” action.
- Media frames with controlled aspect ratios and consistent corner treatment where appropriate.

### Typography
- Display: one expressive family/weight for the main identity or page title.
- Heading: clear progression for page, section, and card titles.
- Body: highly readable family and line height, with a comfortable text measure.
- Metadata: smaller size but still legible, used for status, date, role, stack and links.
- Avoid overly small type to squeeze content in. Remove low-value content instead.

### Color
- Start with a neutral foundation, primary text, secondary text, borders/surfaces and one accent.
- Check contrast in all states; don't use color alone to communicate project status.
- Select accent colors from actual brand/project imagery where coherent, not from the reference's unverified screenshot palette.

### Components
- Site header/navigation.
- Intro/hero block.
- Featured project card and compact project row.
- Project status chip or text label.
- Media frame for screenshots, photos and diagrams.
- Project detail section.
- External link list.
- Optional note/experiment card.
- Footer with contact and social links.

### Motion and accessibility
- Static core experience must be complete before adding motion.
- Use CSS transitions for simple hover/focus feedback, with a reduced-motion alternative.
- Provide visible focus, meaningful link labels, responsive text sizing, proper heading order, alt text, and adequate touch targets.
- Lazy-load below-the-fold project imagery when compatible with the existing stack, and provide width/height or aspect-ratio placeholders to reduce layout shift.

## 9. Prioritized opportunities

Effort estimates are relative and assume a typical small web app. Actual effort depends on the missing website repository.

| Priority | Opportunity | Impact | Effort | Missing-content dependency |
|---|---|---:|---:|---|
| P0 | Locate the actual website repo and capture current desktop/mobile baseline | Very high | Low–medium | None |
| P0 | Inventory real assets and verify project status/link targets | Very high | Low | Low |
| P1 | Clarify intro, site purpose and first-page hierarchy | High | Low | Low |
| P1 | Select 3–5 strongest project stories | Very high | Medium | Medium |
| P1 | Establish typography, spacing, color and media rules | High | Medium | Low |
| P1 | Build a reusable project card/detail pattern within existing framework | High | Medium | Medium |
| P2 | Capture/create accurate project screenshots, diagrams and hardware photos | High | Medium–high | High |
| P2 | Add notes/open-source section if publishable content is ready | Medium | Medium | High |
| P3 | Add rich motion, ambient canvas, wallpaper controls or unusual navigation | Variable | Medium–high | Medium |
| P3 | Add CMS or content tooling | Unknown | Medium–high | Depends on publishing cadence and current stack |

## 10. Asset and content plan

Use real evidence from the work:
- **Aura:** actual device and enclosure photographs, firmware/system diagram, short explanation of the audio pipeline; label under development.
- **Mia:** terminal capture or small workflow diagram showing the stages, adapters, state model and verification gates.
- **LLM-Council:** diagram of Analyst → Skeptic → Synthesizer, plus a real interface capture if the project runs.
- **John / voice AI:** real Android app screenshot and a simple audio flow diagram; use only tools demonstrably present in that repo.
- **Voicecoder:** actual extension screenshot and accurate provider/cost-tracking details.
- **Omi work:** contribution links, test evidence, issue/RFC summary and precise status. Avoid implying the candidate's PRs were merged when the recorded evidence says otherwise.

For every asset, record filename/source, project, rights/licence if not self-created, alt text, date/status, and intended crop. If a visual is not available, use a restrained text/diagram layout or a clearly labelled placeholder during development, but do not publish a fake project screenshot.

## 11. Open questions and assumptions

### Blocking
- What is the correct repository for the live portfolio website? The inspected `thesohamdatta/Resume` repo is a LaTeX resume engine.
- What is the current deployed website URL, if separate from the reference URL?
- Which audience matters most: recruiters, engineering teams, startup founders, open-source collaborators, or a mix?
- Is the intended site a conventional personal portfolio, an experimental “builder’s notebook,” or a combined experience?
- Are there existing project photographs, screenshots, video, design files, analytics or brand choices stored elsewhere?

### Needs validation
- Exact reference fonts/colors/grid measurements and mobile behavior.
- Whether the reference's editor-like controls are core product behavior or an optional overlay/experiment.
- Which candidate projects are live and presentable today, and which are still incomplete.
- Whether project detail pages or a single well-curated home page best match the actual asset volume.

### Assumptions used here
- Candidate facts already approved in the resume repo are allowed as starting content evidence, but require a separate portfolio-oriented editorial pass.
- The first release should be small, real, and easy to extend.
- Existing framework and dependencies should be preserved until the correct site repository is audited.

## 12. Plan for the next phase

1. **Resolve repository scope.** Provide or identify the portfolio repo; verify deployed URL and branch. Do not modify the resume engine to compensate for a missing app repo.
2. **Inspect current implementation.** Map routes, layouts, components, packages, CSS/tokens, images/fonts/video, interactions, tests, build/deploy path, and recent changes. Run the existing build/test commands only after understanding repository instructions.
3. **Capture baseline.** Inspect desktop, tablet and mobile; save screenshots; list current pages and key interaction behavior. Record verified facts separately from assumptions.
4. **Audit content and media.** Build a table of projects, truthful status, audience relevance, links, available visual assets, and missing material.
5. **Agree on direction.** Select the creative direction and page hierarchy. Confirm the content order and whether the site is recruiter-first or more exploratory.
6. **Write an implementation spec.** Convert the approved direction into concrete layouts, components, responsive rules, content schema, accessibility/performance requirements and acceptance criteria.
7. **Only then implement.** Use the existing framework, preserve useful components, avoid dependencies unless there is a clear reason, and implement one coherent first version before adding experimental interactions.
8. **Verify.** Compare screenshots against the baseline, test responsive layouts and keyboard access, check links and image loading, and run existing lint/build/tests. Do not start implementation during this research phase.

## Sources and inspection record

### Reference website
- Homepage: https://www.evebouffard.com/
- Text view: https://www.evebouffard.com/home/text
- Wallpaper view: https://www.evebouffard.com/home/wallpaper
- Study of the World: https://www.evebouffard.com/study
- Voice content: https://www.evebouffard.com/voice.md
- Design content endpoint surfaced during extraction: https://www.evebouffard.com/design.md
- Changelog: https://www.evebouffard.com/changelog (fetch was empty in this crawl, so detailed claims about its contents remain unverified)

### Resume repository
- Repository: https://github.com/thesohamdatta/Resume
- README: https://github.com/thesohamdatta/Resume/blob/main/README.md
- Candidate facts: https://github.com/thesohamdatta/Resume/blob/main/data/facts.yaml
- Technical evidence: https://github.com/thesohamdatta/Resume/blob/main/content/github/evidence.md
- Claim boundaries: https://github.com/thesohamdatta/Resume/blob/main/content/github/boundaries.md
- Pipeline: https://github.com/thesohamdatta/Resume/tree/main/pipeline
- Templates: https://github.com/thesohamdatta/Resume/tree/main/templates/v3
- Latest inspected commit: https://github.com/thesohamdatta/Resume/commit/fdb4a07ee76692560d1995a596c28e7c7bf0970f

### Method and limitations
Used Firecrawl URL mapping and page extraction, Exa page retrieval, Tavily search, and GitHub's repository tree/files/commit APIs. The site extraction gave strong content and information-architecture evidence but is not a substitute for manual browser inspection at multiple viewport sizes. No project files or application code were modified during the audit. This report is based on the available public page content and the supplied repository; unknown details remain labelled as unknown.
