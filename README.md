# metacore-layer-1
metaCore - Layer 1

```
Usage
---
git remote add -f layer-1 git@github.com:xsre/metacore-layer-1.git
git subtree add --prefix iac/terraform/vpc layer-1 main --squash
---
git fetch layer-1 main
git subtree pull --prefix iac/terraform/vpc layer-1 main --squash
```
