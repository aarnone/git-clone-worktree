#!/bin/sh
set -e

INSTALL_DIR="/usr/local/bin"
REPO_URL="https://raw.githubusercontent.com/aarnone/git-clone-worktree/master/git-clone-worktree"

curl -fsSL "$REPO_URL" -o "$INSTALL_DIR/git-clone-worktree"
chmod +x "$INSTALL_DIR/git-clone-worktree"

echo "git-clone-worktree installed to $INSTALL_DIR/git-clone-worktree"
