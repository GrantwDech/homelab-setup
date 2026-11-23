# Local AI Operations

## Current stack

- Ollama is reached through an isolated container network
- Open WebUI exposed through Docker port mapping
- Models include Qwen 4B vision/tool model, Qwen 7B coder model, and Qwen 1.7B model
- NVIDIA container support is configured

## Operating rules

- Start read-only: summarize logs and propose commands.
- Require approval before service changes.
- Require approval before firewall or reverse-proxy changes.
- Keep credentials outside prompts and model context.
- Log administrative actions.
- Treat generated commands as untrusted until reviewed.
