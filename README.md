## Github Ops

This repository automates certain repository operations such as:

- branch-protection
- TODO

### Authentication

To allow the operations to work a Github Token should be provided to Terraform. That token should have certain permissions in order to work:

- repo/public_repo
- admin:org/write:org
- admin:org/read:org

### Workflow

Every time a PR of the **repositories.yml** is merged Github actions will apply the required changes to the repositories specified in it. Here we have two different repositories inside the **my-devops-playground** organization, but both of them have different configuration regarding the **branch-protection** settings.

```yaml
repositories:

    my-devops-playground/repo-name-1:
      branch-protection:
        branch: master
        pull-requests:
          review-count: 1
          codeowners: true

    my-devops-playground/repo-name-2:
      branch-protection:
        branch: dev
        pull-requests:
          review-count: 2
          codeowners: false

```