terramate {
  required_version = "0.4.5"
  config {
    experiments = [
      "scripts",
    ]
    disable_safeguards = ["git-untracked"]
  }
}
