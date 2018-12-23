workflow "Filter and Publish" {
  on = "push"
  resolves = ["Publish"]
}

# Filter for master branches
action "Filter" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "Publish" {
  needs = "Filter"
  uses = "actions/npm@master"
  args = "publish"
  env = {
    NPM_REGISTRY_URL = "https://registry.npmjs.org"
  }
  secrets = [
    "NPM_AUTH_TOKEN",
  ]
}
