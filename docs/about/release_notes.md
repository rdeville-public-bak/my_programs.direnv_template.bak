<!-- BEGIN MKDOCS TEMPLATE -->
<!--
WARNING, DO NOT UPDATE CONTENT BETWEEN MKDOCS TEMPLATE TAG !
Modified content will be overwritten when updating
-->

# Release Notes

<!-- END MKDOCS TEMPLATE -->

## 🔖 v1.0

### 🔖 v1.0.1 <small>17/05/2021</small>

- 📝 Upgrade documentation:
    - Upgrade base content from latest mkdocs_template_rdeville release
    - Remove some redundant content
    - Rewrite setup section into multiple smaller files
    - Regenerate scripts documentation
- 🔧 Regenerate SHA1 sums
- 🙈 Update gitignore


### 🔖 v1.0.0 <small>24/04/2021</small>

First initial release of Dirent Template

- ✨ Add bunch of features:
    - `setup.sh` script to automatically install template,
    - `template` folder holding basic template files
    - `modules` folder with following modules:
        - ansible
        - direnv_management
        - folders
        - go_management
        - keepass
        - kubernetes
        - molecule
        - openstack
        - packer
        - path_management
        - python_management
        - vimrc_local
- 🔧 Add bunch of configuration files:
    - Syntax and workflow configuration files such as `.editorconfig`,
      `.yamllint`, `pyproject.toml`
- 👷 Add CI which test the scripts (bash and python), build the
  documentation and deploy it
- 📝🍱 Add the documentation describing the usage of the template with needed
  assets.
- 📄 Add licenses, MIT and Beer-Ware.

