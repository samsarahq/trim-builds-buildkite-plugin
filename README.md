Trim Builds Buildkite Plugin
============================

A [Buildkite plugin](https://buildkite.com/docs/agent/plugins) to trim old builds from the file system to free up disk space.  Use with caution.

Example
-------

```yaml
steps:
  - command: bin/some-command
    plugins:
      aws5295/trim-builds#commitHash: ~
```

Options
=======
### DISK_AVAILABLE_BEFORE_TRIM
- Default: 10GB
- The min disk space available before a trim takes place. If there is more disk space available than this, the plugin does nothing. If there is less, the plugin will delete all previous builds from the builds directory for this agent.

License
=======
MIT (see [LICENSE](LICENSE))
