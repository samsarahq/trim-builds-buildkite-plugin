# Trim Builds Buildkite Plugin

A [Buildkite plugin](https://buildkite.com/docs/agent/plugins) to trim old builds from the file system to free up disk space.  Use with caution.

## Example

Add the following to your `pipeline.yml`:

```yml
steps:
  - command: ls
    plugins:
      - samsarahq/trim-builds#v0.1.0:
          minimum: 10485760
```

## Configuration

### `minimum` (Optional, number)

The minimum amount of disk space that must be free before the plugin attempts to delete old builds.
Default is `10485760` (10 GB).

## Developing

To run the tests:

```shell
docker-compose run --rm tests
```

## Contributing

1. Fork the repo
2. Make the changes
3. Run the tests
4. Commit and push your changes
5. Send a pull request

## License

MIT (see [LICENSE](LICENSE))
