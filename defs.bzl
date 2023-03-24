def is_bzlmod_enabled():
    return str(Label("@//:BUILD.bazel")).startswith("@@")
