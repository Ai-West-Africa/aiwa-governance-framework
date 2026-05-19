# aiwa-governance-framework
A governance and rights administration framework for culturally grounded AI, governed commercial educational publishing, language preservation, contributor-centered dataset stewardship, and provenance-aware commercialization in Africa.

## Agreement artifact generation

- Agreement source lives in `agreements/aiwa-starisian/src/master-governance-infrastructure-ai-processing-agreement.md`.
- GitHub Actions workflow `.github/workflows/build-agreement-artifacts.yml` builds DOCX and PDF artifacts on every push and uploads them as the `aiwa-starisian-agreement` workflow artifact.
- Local builds can be run with `bash scripts/build_agreement.sh` after installing `pandoc` and `wkhtmltopdf`.
