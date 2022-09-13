## Github Ops

This repository automates certain repository operations such as:

- [repository memberships](#memberships) (teams/people)
- [branch-protection](#branch-protection)

### Credentials

To allow the operations to work a Github Token should be provided to Terraform. That token should have certain permissions in order to work:

- repo/public_repo
- admin:org/write:org
- admin:org/read:org

### Schema

Every time a PR of the **repositories.yml** is merged Github actions will apply the required changes to the repositories specified in it. Here we have two different repositories inside the **my-devops-playground** organization, but both of them have different configuration regarding the **branch-protection** settings.

```yaml
repositories:

    my-org/repository-1:
      memberships:
        people:
        teams:
          "my-org/admins": "admin"

      branch-protection:
        branch: master
        pull-requests:
          review-count: 1
          codeowners:
            ".github/": "@my-org/admins"

    my-org/repository-2:
      memberships:
        people:
        teams:
          "my-org/admins": "admin"

      branch-protection:
        branch: master
        pull-requests:
          review-count: 1
          codeowners:
            ".github/": "@my-org/admins"            

```

#### Memberships

If you'd like to add a repository to certain team, you have to add an entry to the repository **memberships/teams**:

```yaml
repositories:

    my-org/repository-1:
      memberships:
        people:
        teams:
          "my-org/admins": "admin"
```

Each entry should be of the form of **organization/team-slug**:**permission** where permission should be one of:

- pull
- triage
- push
- maintain
- admin

#### Branch protection

TODO