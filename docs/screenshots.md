# Screenshots

The files in `screenshots/` are public-safe demo visuals. They are generated
from neutral text fixtures rather than captured from private work.

Regenerate them with:

```bash
./scripts/generate-demo-screenshots
```

For real terminal captures, first create neutral demo repos:

```bash
./scripts/demo-session prepare
./scripts/demo-session show hermes
```

Then inspect the capture for local paths, emails, account names, real commit
history, and private filenames before publishing.

