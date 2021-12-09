---
hide:
  - navigation # Hide navigation
  - toc        # Hide table of contents
---

{% set curr_repo=subs("direnv_template") %}

<!-- BEGIN MKDOCS TEMPLATE -->
<!--
WARNING, DO NOT UPDATE CONTENT BETWEEN MKDOCS TEMPLATE TAG !
Modified content will be overwritten when updating
-->

<div align="center">

  <!-- Project Title -->
  <a href="{{ git_platform.url }}{{ curr_repo.repo_path_with_namespace }}">
    <img src="{{ curr_repo.logo }}" width="200px">
    <h1>{{ curr_repo.name }}</h1>
  </a>

<hr>

{{ to_html(curr_repo.desc) }}

<hr>

  <b>
IMPORTANT !<br>

Main repo is on
<a href="{{ git_platform.url }}{{ curr_repo.git_slug_with_namespace }}">
  {{ git_platform.name }} - {{ curr_repo.git_name_with_namespace }}</a>.<br>
On other online git platforms, they are just mirrors of the main repo.<br>
Any issues, pull/merge requests, etc., might not be considered on those other
platforms.
  </b>

</div>

<!-- END MKDOCS TEMPLATE -->

## Introduction

This repo aims to help managing directory environment uniformly accross multiple
project. Management of directory environment (i.e. activation and deactivation)
can be done manually or using [`direnv`][direnv].

### What is a directory environment ?

What we call a directory environment is a set of environment variables, binary,
scripts, etc., that should only be configured when working on a specific
project (i.e. in a specific folder and its subfolder).

For instance, if you use python virtualenv and OpenStack. Usually, when
starting to work, you often may enter the following command:

```bash
# Load OpenStack project variable
source openrc.sh
# Activate python virtual environment
source .venv/bin/activate
```

This will setup OpenStack related variable and Python Virtual environment
related variable as well as the method `deactivate` to deactivate the python
virtual environment.

Both of these are directory related process, usually you do not want these values
to be set when on another directory.

So to conclude this description, basically this repo will help you to setup your
directory to:

  - Automate these command to setup environment variable and methods when
    entering directories in which you want these varaible set
  - Automate unsetting these variables and methods when leaving the directory.

This can be achieve manually (by sourcing the right file) or by using
[`direnv`][direnv]. [`direnv`][direnv] is an extension for your shell. It
augments existing shells with a new feature that can load and unload environment
variables depending on the current directory.

In other terms, if a script `.envrc` is present in a folder and allowed for
`direnv`, it will automatically be executed when entering the folder. When
leaving the folder any exported variables will be automatically unloaded.

### Why this repo since there is [`direnv`][direnv] ?

Since some times now, I use [`direnv`][direnv] to manage my directory environment.
Nevertheless, I was tired to always rewrite or copy/paste the same base scripts,
then adapt them for each of my working directory. This repo is here to help
managing the directory environment script in a homogeneous manner. Now, I do not
need to rewrite or copy/paste the base scripts. All of my repos have the same
scripts (i.e. modules) and I configure them using a `.envrc.ini` file.

## Quickstart

In this section, we will see succinctly how  to use this repo to setup directory
environment for your current folder.

First, install scripts setting up directory environment:

```bash
curl -sSL {{ git_platform.url }}{{ direnv_template.git_slug_with_namespace }}/-/raw/master/setup.sh | bash -
```

This will create file `.envrc` and folder `.direnv`.

Then copy `.direnv/templates/envrc.template.ini` next to `.envrc`.

```bash
cp .direnv/templates/envrc.template.ini .envrc.ini
```

Now, see [modules][modules] documentation to choose which module you want as
well as their configuration. Then, update `.envrc.ini` configuration file
accordingly with your favorite editor (`vim` here as example).

```bash
vim .envrc.ini
```

Finally, activate the directory environment.

```bash
# If you are using `direnv`, you can allow it for the current directory
direnv allow

# If you are not using `direnv`, you can activate it manually.
source .direnv/activate_direnv
```

This will parse your `.envrc.ini` and load modules accordingly.

Once you have finish working, you may want to deactivate directory environment:

  - If you are using [`direnv`][direnv], you have nothing to do, the directory
    environment will automatically be deactivated when leaving the directory.

  - If you activate it manually, a new command should be defined:
    `deactivate_direnv`. You simply need to call it wherever you are.

See [Setup directory environment][setup_directory_environment] for a more complete usage description.

[modules]: modules/index.md
[setup_directory_environment]: ./setup/index.md

<!-- URL used in mulitple section -->
[direnv]: https://direnv.net
