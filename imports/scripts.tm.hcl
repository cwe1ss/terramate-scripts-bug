script "drift" {
  description = "Drift detection"
  job {
    commands = [
      ["cmd.exe", "/C", "echo cmd-1"],
      ["cmd.exe", "/C", "echo cmd-2"],
    ]
  }
}
