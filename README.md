## Github Ops

This repository automates certain repository operations such as:

- branch-protection
- TODO

### Authentication

To allow the operations to work a Github Token should be provided to Terraform. That token should have certain permissions in order to work:

- repo/public_repo
- admin:org/write:org
- admin:org/read:org