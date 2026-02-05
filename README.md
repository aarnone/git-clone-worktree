# git-clone-worktree

Clone a git repository and set it up for a worktree-based workflow.

## Installation

```bash
curl -fsSL https://raw.githubusercontent.com/aarnone/git-clone-worktree/master/install.sh | sh
```

## Usage

```
git-clone-worktree <repository-url> [directory-name]
```

### Arguments

- `repository-url` - Git repository URL (https or ssh)
- `directory-name` - Optional: Target directory name (defaults to repo name)

### Examples

```bash
git-clone-worktree git@github.com:user/myproject.git
git-clone-worktree https://github.com/user/myproject.git myproject
git-clone-worktree git@github.com:user/myproject.git ~/projects/myproject
```

### What it does

1. Creates directory structure with `.bare/` subdirectory
2. Clones repository as bare into `.bare/`
3. Sets up `.git` file to point to `.bare/`
4. Configures remote tracking for fetches
5. Creates initial worktree for default branch
6. Displays next steps

### Directory structure created

```
myproject/
├── .bare/          # Git repository (hidden)
├── .git            # Pointer file to .bare/
└── main/           # First worktree (default branch)
```

## Tip

If installed to a directory in your `PATH`, you can invoke it as a git subcommand:

```bash
git clone-worktree git@github.com:user/myproject.git
```

## Windows

Requires Git Bash or WSL.

## License

MIT
