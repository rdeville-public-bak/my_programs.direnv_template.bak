---
hide:
  - toc # Hide toc pane
---
# Upgrade to the latest version

One of the main purpose of this project is to homogenize directory environment
to avoid copy/paste same scripts but with very little adjustments.

In order to do so, the project provide a script to automate the upgrade. The
script is installed the first time you activate your directory environment in
`.direnv/bin/upgrade_direnv`. Then, if you do not set variable
`add_direnv_to_path` to `false` for the `direnv_management` module (default is
`true`). Folder `.direnv/bin` is added to your `PATH`, making the script
available from the command line.

The script will clone the last release of the `direnv_template` project in
`.direnv/tmp/direnv_project`. Then will check which files are differents from
those already installed. If they differs, it means that there exist a new
version for the script. The script will then make a backup of the existing file
next to its previous location, before installing the new version.

Finally, to upgrade the your directory environment, you simply need to activate
the directory environment (see above section [Activate][activate]). Then simply
call the `upgrade_direnv` script:

```bash
# Upgrade your directory environment with last version of scripts
upgrade_direnv [options]
```

Available options for the scripts are:

  - `-s,--ssh`: Tell the script to clone the latest `direnv_template` using SSH.
  - `-h,--help`: Print the usage of the script

Normally, you should see output informing you which files are being upgraded.

[activate]: activate.md
