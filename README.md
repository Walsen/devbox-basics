# Devbox Basics

## Overview

A repo to demonstrate Devbox basic usage.

DevBox website: <https://www.jetify.com/devbox>

Related post: <https://blog.walsen.website/posts/devbox-portable-and-isolated-development-environments/>

## Configuration

Install Devbox:

```bash
curl -fsSL https://get.jetify.com/devbox | bash
```

## Execute the Example

You need to edit the files `.envrc` and `.env` first, complete the AWS variables corresponding to the access keys for your user.

1. Clone this repository.
2. Enter to the directory.
3. Provision the shell: `devbox shell`
4. List the tasks `devbox run tasklist`

Any comment or question, please send me a message: <sergio.rodriguez@cbba.cloud.org.bo>