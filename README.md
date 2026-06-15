<p align="center">
  <img src="https://img.shields.io/badge/42-Minishell-000000?style=for-the-badge&logo=42&logoColor=white" alt="42 Minishell"/>
</p>

<h1 align="center">
  Minishell
</h1>

<p align="center">
  <em>As beautiful as a shell</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Language-C-00599C?style=flat-square&logo=c&logoColor=white" alt="C"/>
  <img src="https://img.shields.io/badge/Build-Makefile-064F8C?style=flat-square&logo=gnu&logoColor=white" alt="Makefile"/>
  <img src="https://img.shields.io/badge/Norm-Compliant-brightgreen?style=flat-square" alt="Norminette"/>
  <img src="https://img.shields.io/badge/Grade-125%2F100-success?style=flat-square" alt="Grade"/>
</p>

---

## About

**Minishell** is a simplified shell interpreter inspired by **bash**, developed as part of the [42 School](https://42.fr) curriculum. This project dives deep into Unix process management, parsing theory, signal handling, and systems programming in C.

The goal is to implement a functional shell that handles command execution, pipes, redirections, environment variables, and built-in commands -- all while managing memory carefully and following strict coding standards.

```
 ___  ___ __ __  __ __  __  __  __  ____ __    __
 ||\\//|| || |\\ || || (( \ ||  || ||    ||    ||
 || \/ || || |\\|| ||  \\  ||==|| ||==  ||    ||
 ||    || || || \| || \_)) ||  || ||___ ||__| ||__|
```

---

## Features

### Core Shell Functionality
| Feature | Description |
|---------|-------------|
| Interactive Prompt | Custom prompt displaying user, hostname, and current path |
| Command History | Full history support via GNU Readline |
| Signal Handling | Proper `Ctrl+C`, `Ctrl+D`, and `Ctrl+\` behavior |
| Exit Status | `$?` expansion for last command return value |

### Parsing & Tokenization
- Lexical analysis with full token stream generation
- Single (`'`) and double (`"`) quote handling
- Syntax validation (unclosed quotes, misplaced operators)
- Variable expansion inside double quotes

### Command Execution
- External command execution via `execve()`
- PATH resolution for command lookup
- Process forking and child management
- Exit status propagation

### Pipes & Redirections
| Operator | Description |
|----------|-------------|
| `\|` | Pipe output of one command to input of next |
| `<` | Redirect input from file |
| `>` | Redirect output to file (truncate) |
| `>>` | Redirect output to file (append) |
| `<<` | Here-document (read input until delimiter) |

### Built-in Commands
| Command | Description |
|---------|-------------|
| `echo` | Display text (`-n` flag supported) |
| `cd` | Change working directory |
| `pwd` | Print current working directory |
| `export` | Set/display environment variables |
| `unset` | Remove environment variables |
| `env` | Display the environment |
| `exit` | Exit the shell with status code |

### Bonus Features
- Wildcard (`*`) expansion in the current directory
- `&&` and `||` logical operators with precedence
- Parentheses `()` for command grouping

---

## Architecture

```
                          ┌─────────────────┐
                          │   User Input    │
                          │   (readline)    │
                          └────────┬────────┘
                                   │
                          ┌────────▼────────┐
                          │   Tokenizer     │
                          │  (ft_tokens)    │
                          └────────┬────────┘
                                   │
                          ┌────────▼────────┐
                          │ Syntax Check    │
                          │  (ft_syntax)    │
                          └────────┬────────┘
                                   │
                    ┌──────────────┼──────────────┐
                    │              │              │
           ┌───────▼──────┐ ┌────▼─────┐ ┌─────▼──────┐
           │  Expander     │ │Wildcards │ │  Quote     │
           │(ft_expander)  │ │(ft_wild) │ │  Removal   │
           └───────┬──────┘ └────┬─────┘ └─────┬──────┘
                    │              │              │
                    └──────────────┼──────────────┘
                                   │
                          ┌────────▼────────┐
                          │  Binary Tree    │
                          │(ft_bin_tokens)  │
                          └────────┬────────┘
                                   │
                          ┌────────▼────────┐
                          │   Executer      │
                          │ (ft_executer)   │
                          └────────┬────────┘
                                   │
                    ┌──────────────┼──────────────┐
                    │              │              │
           ┌───────▼──────┐ ┌────▼─────┐ ┌─────▼──────┐
           │  Builtins     │ │  Pipes   │ │Redirections│
           │(ft_builtins)  │ │(ft_pipes)│ │(ft_redirects)│
           └──────────────┘ └──────────┘ └────────────┘
```

---

## Project Structure

```
minishell/
├── Makefile                    # Build configuration
├── incs/
│   ├── minishell.h            # Main header (includes & prototypes)
│   └── ft_structs.h           # Data structures & enums
├── libs/
│   └── libft/                 # Custom C standard library (42)
└── srcs/
    ├── main.c                 # Entry point & main loop
    ├── main_utils.c           # Main loop helpers
    ├── main_utils2.c          # Additional utilities
    ├── ft_tokens/             # Tokenization engine
    ├── ft_bin_tokens/         # Binary tree construction
    ├── ft_syntax/             # Syntax validation
    ├── ft_expander/           # Variable expansion ($VAR, $?)
    ├── ft_wildcards/          # Glob pattern matching (*)
    ├── ft_rmv_quotes/         # Quote removal pass
    ├── ft_redirects/          # I/O redirections & heredocs
    ├── ft_executer/           # Process execution & pipes
    ├── ft_builtins/           # Built-in command implementations
    ├── ft_signals/            # Signal handling (SIGINT, etc.)
    ├── ft_data_init/          # Initialization & environment setup
    └── ft_free/               # Memory cleanup & deallocation
```

---

## Getting Started

### Prerequisites

- **GCC** or **Clang** compiler
- **GNU Make**
- **GNU Readline** library

#### Installing Readline

```bash
# Debian / Ubuntu
sudo apt-get install libreadline-dev

# Fedora / RHEL
sudo dnf install readline-devel

# macOS (with Homebrew)
brew install readline
```

### Building

```bash
# Clone the repository
git clone https://github.com/PatzCM/Minishell_42.git
cd Minishell_42

# Compile
make

# Run
./minishell
```

### Makefile Targets

| Target | Description |
|--------|-------------|
| `make` | Compile the project (with libft) |
| `make clean` | Remove object files |
| `make fclean` | Remove objects and executable |
| `make re` | Full recompilation |
| `make valgrind` | Run with memory leak detection |

---

## Usage Examples

```bash
# Simple commands
$> ls -la
$> echo "Hello, World!"

# Pipes
$> cat file.txt | grep "pattern" | wc -l
$> ls -la | sort -k5 -n | tail -5

# Redirections
$> echo "hello" > output.txt
$> cat < input.txt >> output.txt

# Here-document
$> cat << EOF
> This is a heredoc
> It ends with EOF
> EOF

# Environment variables
$> export MY_VAR="hello"
$> echo $MY_VAR
$> unset MY_VAR

# Wildcards (bonus)
$> ls *.c
$> echo srcs/*/*.c

# Logical operators (bonus)
$> true && echo "success" || echo "failure"
$> (ls && echo "done") | cat

# Exit status
$> echo $?
```

---

## Technical Details

### Data Structures

The shell uses a **linked-list-based token stream** that is then converted into a **binary tree** for pipe execution:

- **`t_token`** -- Linked list node representing a lexical token (command, argument, operator)
- **`t_bin_token`** -- Binary tree node for pipe chain execution (left = command, right = next pipe)
- **`t_data`** -- Global state container (tokens, environment, prompt, exit status)
- **`t_envp`** -- Environment variable linked list (key-value pairs)

### Execution Model

1. **Single commands** -- Executed directly or forked depending on builtin status
2. **Pipe chains** -- Binary tree traversal with `pipe()` + `fork()` for each segment
3. **Redirections** -- Applied via `dup2()` before execution in child processes
4. **Heredocs** -- Processed before execution, content piped through temporary mechanism

### Memory Management

- All dynamically allocated memory is freed on each prompt cycle
- Comprehensive cleanup on exit via `ft_free()`
- Valgrind-clean (readline leaks suppressed)

---

## Compilation Flags

```
-Wall -Wextra -Werror -g
```

| Flag | Purpose |
|------|---------|
| `-Wall` | Enable all common warnings |
| `-Wextra` | Enable extra warnings |
| `-Werror` | Treat warnings as errors |
| `-g` | Include debug symbols |

---

## Author

| | |
|---|---|
| **afogonca** | [42 Porto](https://www.42porto.com/) |

---

## Acknowledgments

- [42 School](https://42.fr) for the project specification
- [GNU Readline](https://tiswww.case.edu/php/chet/readline/rltop.html) for the input library
- The bash manual for shell behavior reference

---

<p align="center">
  <sub>Made with perseverance at 42 Porto</sub>
</p>
