Minimum repo for an issue with incorrectly ordered Terramate script commands when using `after`.

To reproduce, run the following command in the project root:

```bash
terramate script run drift
```

The output is as follows. As you can see, sometimes "cmd-2" is printed before "cmd-1".

```bash
Script 1 at /imports/scripts.tm.hcl:1,1-9,2 having 1 job(s)
/stacks/management/stack-b (script:1 job:0.0)> cmd.exe /C echo cmd-1
cmd-1
/stacks/management/stack-b (script:1 job:0.1)> cmd.exe /C echo cmd-2
cmd-2
/stacks/management/stack-a (script:1 job:0.1)> cmd.exe /C echo cmd-2
cmd-2
/stacks/management/stack-a (script:1 job:0.0)> cmd.exe /C echo cmd-1
cmd-1
/stacks/management/stack-c (script:1 job:0.0)> cmd.exe /C echo cmd-1
cmd-1
/stacks/management/stack-c (script:1 job:0.1)> cmd.exe /C echo cmd-2
cmd-2
/stacks/operations/stack-a (script:1 job:0.0)> cmd.exe /C echo cmd-1
cmd-1
/stacks/operations/stack-a (script:1 job:0.1)> cmd.exe /C echo cmd-2
cmd-2
/stacks/network/stack-a (script:1 job:0.0)> cmd.exe /C echo cmd-1
cmd-1
/stacks/network/stack-a (script:1 job:0.1)> cmd.exe /C echo cmd-2
cmd-2
/stacks/network/stack-b (script:1 job:0.1)> cmd.exe /C echo cmd-2
cmd-2
/stacks/network/stack-b (script:1 job:0.0)> cmd.exe /C echo cmd-1
cmd-1
/stacks/operations/stack-b (script:1 job:0.0)> cmd.exe /C echo cmd-1
cmd-1
/stacks/operations/stack-b (script:1 job:0.1)> cmd.exe /C echo cmd-2
cmd-2
```
