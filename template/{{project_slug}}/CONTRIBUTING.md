
# Contributing guide

This document outlines the guidelines and best practices for contributing to the project. Please take a moment to read through it before submitting a pull request.

## Ways to Contribute

Contributions can take many forms, not just code. Here are some ways you can contribute:
- Reporting bugs or suggesting features by opening issues.
- Submitting pull requests with bug fixes or new features.
- Improving documentation.
- Reviewing and providing feedback on existing pull requests.
- Helping other users in the community.


## Setup the Development Environment

### Pre-requisites

This project uses [Devenv](https://devenv.sh/) to provide a self-contained development environment using the power of [Nix](https://nixos.org/).

While you could install the dependencies directly on your system if you like, using Devenv is the recommended away for the best possible experience.

To install Devenv, follow the instructions at [devenv.sh](https://devenv.sh/getting-started/).

[Direnv](https://direnv.net/) is also recommended. Direnv allows to automatically load the Devenv environment when you `cd` into the project directory, as well as simplify the management of project level environment variables. Follow the instructions at [direnv.net](https://direnv.net/docs/installation.html) to install Direnv and to integrate it with your shell.

### Running the Development Environment

```bash
git clone https://github.com/brpaz/rust-template.git
cd rust-template
direnv allow
```

A devenv shell should be automatically loaded, after running `direnv allow`.

You can verify that you are in the Devenv shell by checking the output of  `which rustc`. If you see a path like `/nix/store/.../bin/rustc`, then you are in the Devenv shell.

If you are not using Direnv or if your shell was not automatically loaded for some reason, you can manually start the Devenv shell by running:

```bash
devenv shell
```

### Task runner

The project uses [Taskfile](https://taskfile.dev/) as a task runner to simplify the execution of common tasks during development, like running linters or tests.

To run a task, use the following command:

```bash
task <task_name>
```

Some of the included tasks are:

| Task Name | Description                   |
| --------- | ----------------------------- |
| build     | Build the Docker image        |
| test      | Run container structure tests |
| lint      | Run linter (hadolint)         |
| security  | Run container security tests  |

You can list all available tasks by running:

```bash
task -l
```

### Git Commit Hooks

This project uses [Lefthook](https://lefthook.io/) to manage Git commit hooks. Lefthook hooks are automatically installed when you start the Devenv shell.

The following hooks are configured:
- `pre-commit`: Runs code formatting, linters and tests before each commit.
- `pre-push`: Runs commitlint to ensure commit messages follow the conventional commit format.

## Conventional Commits

This project follows the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) specification for commit messages. This helps to keep a consistent commit history and makes it easier to generate changelogs.

When writing commit messages, please use the following format:

```
<type>([optional scope]): <description>
```

Where `<type>` is one of the following:
- `feat`: A new feature
- `fix`: A bug fix
- `docs`: Documentation changes
- `ci`: Changes to CI configuration files and scripts
- `refactor`: Code changes that neither fix a bug nor add a feature
- `test`: Adding or updating tests
- `chore`: Changes to the build process or auxiliary tools and libraries.

[Commitlint](https://keisukeyamashita.github.io/commitlint-rs/) is used to enforce these rules on commit messages.

We know that sometimes during development, it can be cumbersome to follow these rules strictly. That´s why we only enforce commit message linting on `git push` operations, via the `pre-push` Git hook. This way, you can make as many local commits as you want, and only need to ensure that the commit messages are valid when pushing your changes to the remote repository.

## Pull Request Guidelines

When submitting a pull request, please ensure that:
- Your code follows the project's coding style and conventions.
- You have added tests for any new functionality or bug fixes.
- All tests pass.
- Your pull request description clearly explains the changes you have made and the reasons for them.
- Your branch is up to date with the main branch.
- Your commit messages follow the Conventional Commits specification.
- You have linked any related issues in the pull request description.
- You have requested reviews from relevant team members.
- You have addressed any feedback provided during the review process.
- You have squashed your commits into logical units, if necessary.

## Review Process

All pull requests will be reviewed by at least one other team member. The reviewer will check for code quality, adherence to project guidelines, and overall functionality. They may request changes or provide feedback before the pull request can be merged.

## Release Process

Releases are created using GitHub Releases. The release process is automated using GitHub Actions and [Release Drafter](https://github.com/release-drafter/release-drafter).
