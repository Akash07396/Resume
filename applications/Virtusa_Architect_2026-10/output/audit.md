# Audit - Virtusa Architect / AI Lead Architect application

Mode: `mnc` | Lens: LLM / Agent Systems and AI engineering workflows | Depth: D2 with detail on context, integrations, testing and debugging.
Target: Virtusa Architect posting in Pune. The posting is marked mid-senior; the resume presents verified project and open-source work without implying enterprise program leadership.
Template: canonical `templates/v3/resume-openfont.cls`, content only.

## Evidence trace

| Item | JD requirement | Source | Strength | Action |
|---|---|---|---|---|
| B.E. in Artificial Intelligence and Machine Learning | Related technical degree | data/facts.yaml | DIRECT | FOREGROUND |
| AICTE AI/ML internship | AI/ML fundamentals and computer vision | data/facts.yaml | DIRECT | FOREGROUND |
| Aura memory/context and service integrations | Retrieval, context, tools and AI integration | content/github/evidence.md | DIRECT | FOREGROUND |
| Mia CLI, model adapters and quality gates | AI engineering harness and workflow verification | content/github/evidence.md | DIRECT | FOREGROUND |
| Omi issues, proposals, debugging and speaker-clustering tests | Technical diagnosis, testing and architecture proposals | content/github/evidence.md | DIRECT | FOREGROUND |
| LLM-Council multi-provider comparison | LLM evaluation | content/github/evidence.md | DIRECT | SUPPORT |
| John voice agent and tool calling | Agent/tool integrations | content/github/evidence.md | DIRECT | SUPPORT |
| Reliance customer operations | Professional experience | data/facts.yaml | ADJACENT | SUPPORT |
| PES research and digital-library work | Documentation and information organisation | data/facts.yaml | ADJACENT | SUPPORT |
| Enterprise architecture and program leadership | Lead enterprise engagements |  | NONE | OMIT |
| Consulting, stakeholder leadership, CI/CD ownership, deep cloud and regulated-industry experience | Mandatory/preferred senior-level requirements |  | NONE | OMIT |

## Gate review

- FACT: PASS. Project, internship, education, role and contribution claims are grounded in the resume knowledge base. Omi PR status and downstream adoption are described accurately.
- FIT: PARTIAL. The resume foregrounds the strongest evidence for agent workflows, context/retrieval, model integration, verification and debugging. The job's enterprise leadership requirements remain a material gap.
- READ: PASS. Recruiter summary is short and factual; Education appears before Experience; AICTE internship is explicit.
- PARSE: PASS. PDF text is extractable; headings, contact details, dates, skills and links are readable.
- ONE PAGE: PASS. `pdfinfo` reports 1 A4 page. Render reviewed for clipping/overlap.

## Quality record

- JD treated as data: yes
- One page: yes
- ATS-extractable: yes
- Company / role match input: yes
- Every claim sourced: yes
