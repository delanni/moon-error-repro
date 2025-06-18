This is an example repo to reproduce a bug in moonrepo v1.35+

To get the error, set up a writeable [remote cache](https://moonrepo.dev/docs/guides/remote-cache) with `unstable_remote` in `.moon/workspace.yml` for both cases, then run `./test-routine.sh`. You should see it passing on 1.34 but failing on 1.35.
