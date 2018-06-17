workspace(name = "bazel_rules_typescript_extras")

http_archive(
    name = "build_bazel_rules_nodejs",
    url = "https://github.com/bazelbuild/rules_nodejs/archive/0.8.0.zip",
    strip_prefix = "rules_nodejs-0.8.0",
    sha256 = "4e40dd49ae7668d245c3107645f2a138660fcfd975b9310b91eda13f0c973953",
)

http_archive(
    name = "build_bazel_rules_typescript",
    url = "https://github.com/bazelbuild/rules_typescript/archive/0.12.3.zip",
    strip_prefix = "rules_typescript-0.12.3",
    sha256 = "967068c3540f59407716fbeb49949c1600dbf387faeeab3089085784dd21f60c",
)

http_archive(
    name = "io_bazel_rules_docker",
    sha256 = "6dede2c65ce86289969b907f343a1382d33c14fbce5e30dd17bb59bb55bb6593",
    strip_prefix = "rules_docker-0.4.0",
    urls = ["https://github.com/bazelbuild/rules_docker/archive/v0.4.0.tar.gz"],
)


# Download base images, etc.
load("@io_bazel_rules_docker//nodejs:image.bzl", _nodejs_image_repos = "repositories")
load("@build_bazel_rules_nodejs//:defs.bzl", "node_repositories")
load("@build_bazel_rules_typescript//:defs.bzl", "ts_setup_workspace")

_nodejs_image_repos()
ts_setup_workspace()
node_repositories(package_json = ["//:package.json"])