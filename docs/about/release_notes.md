<!-- BEGIN MKDOCS TEMPLATE -->
<!--
WARNING, DO NOT UPDATE CONTENT BETWEEN MKDOCS TEMPLATE TAG !
Modified content will be overwritten when updating
-->

# Release Notes

<!-- END MKDOCS TEMPLATE -->

## 🔖 v1.2

!!! info "🔖 v1.2.3"

    ### 🔖 v1.2.3 <small>09/12/2021</small>

      - ⬆📝 Upgrade documentation to use latest mkdocs_template_rdeville

!!! info "🔖 v1.2.2"

    ### 🔖 v1.2.2 <small>27/11/2021</small>

      - 🚨 Remove shellcheck warning in taskwarrior module
      - 💚 Apply python formatter to plugins.py

!!! info "🔖 v1.2.1"

    ### 🔖 v1.2.1 <small>27/11/2021</small>

      - 🐛 Fix python bug in managing pip version, now just ensuring pip3 is
        installed, assuming pip3 is corresponding to python version.

!!! info "🔖 v1.2.0"

    ### 🔖 v1.2.0 <small>22/08/2021</small>

      - ✨ Add module to export arbitrary environment variable

## 🔖 v1.1

??? info "🔖 v1.1.0"

    ### 🔖 v1.1.0 <small>06/08/2021</small>

      - ✨ Add taskwarrior module

## 🔖 v1.0

??? info "🔖 v1.0.1"

    ### 🔖 v1.0.1 <small>17/05/2021</small>

      - 📝 Upgrade documentation:
        - Upgrade base content from latest mkdocs_template_rdeville release
        - Remove some redundant content
        - Rewrite setup section into multiple smaller files
        - Regenerate scripts documentation
      - 🔧 Regenerate SHA1 sums
      - 🙈 Update gitignore

??? info "🔖 v1.0.0"

    ### 🔖 v1.0.0 <small>24/04/2021</small>

    First initial release of Direnv Template

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

