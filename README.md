A config setting to distinguish bzlmod and WORKSPACE mode.

```
$ bazel build demo && cat bazel-bin/demo.txt
...
workspace
```

```
$ bazel build demo --enable_bzlmod && cat bazel-bin/demo.txt
...
bzlmod
```

Where `demo` is defined as

```
write_file(
    name = "demo",
    out = "demo.txt",
    content = select({
        ":bzlmod": ["bzlmod"],
        ":workspace": ["workspace"],
    }),
)
```
