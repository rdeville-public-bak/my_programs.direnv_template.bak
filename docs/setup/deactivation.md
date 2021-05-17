---
hide:
  - toc # Hide toc pane
---
# Deactivate

To deactivate your directory environment, this will depend on the way you
activate it.

  - If you activate it using `direnv`, you have nothing to do. The directory
    environment will automatically be deactivated when leaving the directory.

  - If you activate it manually, when activating it, a new command is available
    `deactivate_direnv` (similarly to python `deactivate`). So to deactivate
    your directory environment you simply have to type the following command
    wherever you are:

    ```bash
    # From wherevere you are in your computer
    deactivate_direnv
    ```
