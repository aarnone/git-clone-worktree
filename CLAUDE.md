# git-clone-worktree

A bash script that clones a git repository and sets it up for a worktree-based workflow.

## Project Structure

- `git-clone-worktree` - The main bash script
- `README.md` - Usage documentation
- `LICENSE` - MIT license

## What the script does

1. Clones a repository as a bare repo into `.bare/`
2. Creates a `.git` pointer file
3. Sets up remote tracking configuration
4. Creates the first worktree for the default branch
