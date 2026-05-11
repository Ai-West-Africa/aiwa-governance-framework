# aiwa-governance-framework
A governance and rights administration framework for culturally grounded AI, educational publishing, language preservation, and contributor-centered dataset stewardship in Africa.

## Agreement artifact generation

- Agreement source lives in `/home/runner/work/aiwa-governance-framework/aiwa-governance-framework/agreements/aiwa-starisian/src/master-governance-infrastructure-ai-processing-agreement.md`.
- GitHub Actions workflow `.github/workflows/build-agreement-artifacts.yml` builds DOCX and PDF artifacts on every push and uploads them as the `aiwa-starisian-agreement` workflow artifact.
- Local builds can be run with `bash scripts/build_agreement.sh` after installing `pandoc` and `wkhtmltopdf`.
