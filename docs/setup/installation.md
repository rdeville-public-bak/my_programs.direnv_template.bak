---
hide:
  - toc # Hide toc pane
---
# Installation of a directory environment

First thing to do is install required source code into your current folder.

In order to do so, first check the content of the setup script, this
can be done with the following command:

```bash
# First download setup script in a temporary folder
curl -sSL {{ git_platform.url }}{{ direnv_template.git_slug_with_namespace }}/-/raw/master/setup.sh \
  > /tmp/setup_direnv.sh
# Then review this script with your favorite editor, `vim` here as example
vim /tmp/setup_direnv.sh
```

Once you understand what the script do, you can execute it **from the folder in
which you want to setup a directory environment**. From here, you have two
possibilities:

  - You have downloaded the script somewhere in your computer

```bash
# First make it executable
chmod +x /tmp/setup_direnv.sh
# Then simply execute it
/tmp/setup_direnv.sh
```

  - You did not downloaded the script or you are lazy and do not want to make it
    executable

```bash
# You can setup directory environment in one command
curl -sSL {{ git_platform.url }}{{ direnv_template.git_slug_with_namespace }}/-/raw/master/setup.sh | bash -
```

This will create a folder `.direnv` and the file `.envrc·` in the current
directory if they do not exists.

!!! warning "Directory already containing `.direnv` or `.envrc`"
    If you execute previous command in a folder already containing a directory
    `.direnv` or a file `.envrc`, you will see following output:

    ```text
    [WARNING] This folder seems to already be set to use direnv.
    [WARNING] Continuing might result in the loss of your configuration
    [WARNING] If you want to upgrade your configuration use the option `--upgrade|-u`
    ```

    From this point, you have to possibilites:

      - Upgrade your current directory environment using the setup
        script:

        ```bash
        curl -sSL {{ git_platform.url }}{{ direnv_template.git_slug_with_namespace }}/-/raw/master/setup.sh | bash -s -- --ugrade
        ```

      - Assuming you already have configured your directory environment (see
        section [Configure][configure]):
        - [Activate your directory environment][activate]
        - Then [Upgrade directory environment source code][upgrade]


Assuming you are in a `git` managed directory, you might want to version this
base scripts to make the directory environment linked to your repo:

```bash
# Add directory environment scripts to your git repo
git add .direnv .envrc
# Commit these scripts
git commit
```

[activate]: activation.md
[upgrade]: upgrade.md
[configure]: configuration.md
