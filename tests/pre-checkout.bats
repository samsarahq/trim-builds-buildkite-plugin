#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

@test "Disk not full - does not delete anything" {
    export BUILDKITE_AGENT_NAME="agent123"

    stub df \
        '-k --output=avail /var/lib/buildkite-agent/builds/ : echo "1181116006"' \
        '-k -h --output=avail /var/lib/buildkite-agent/builds/ : echo "11 GB"'

    run "$PWD/hooks/pre-checkout"

    unstub df

    assert_success
    assert_output --partial "Disk space free: 11 GB"
    assert_output --partial "Sufficient disk space available - proceeding!"
}
