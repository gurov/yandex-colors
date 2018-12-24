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
  args = "publish --access public"
  needs = "Filter"
  uses = "actions/npm@master"
  secrets = ["NPM_AUTH_TOKEN"]
}
