#!/bin/bash

function rcp() {
    local dry_run=0
    local move=0
    local rsync_args=()

    # Parse command line arguments for rcp function flags
    for arg in "$@"; do
        case "$arg" in
            -d|--dry-run)
                dry_run=1
                ;;
            -m|--move)
                move=1
                ;;
            *)
                # Collect remaining arguments to pass to rsync
                rsync_args+=("$arg")
                ;;
        esac
    done

    # Base rsync command
    local cmd="rsync -ah --info=progress2"

    # Add dry-run flag if requested
    if [ "$dry_run" -eq 1 ]; then
        echo "DRY RUN: No files will be modified."
        cmd+=" --dry-run"
    fi

    # Add remove-source-files flag if move requested
    if [ "$move" -eq 1 ]; then
        cmd+=" --remove-source-files"
    fi

    # Append the remaining source and destination arguments to the command
    # We must explicitly list the remaining args to prevent issues
    if [ "${#rsync_args[@]}" -lt 2 ]; then
        echo "Usage: rcp [-d|--dry-run] [-m|--move] source [source...] destination"
        return 1
    fi

    # Execute the final rsync command with the source and destination arguments
    $cmd "${rsync_args[@]}"
}


