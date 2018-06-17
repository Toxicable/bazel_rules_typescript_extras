load("@io_bazel_rules_docker//container:container.bzl", "container_push")

def docker_push_group(
    name,
    image,
    registry,
    repository,
    tags = [],
    **kwargs):

    count = 0

    for tag in tags:
        container_push(
            name = name + "." + str(count),
            image = image,
            format = "Docker",
            registry = registry,
            repository = repository,
            stamp = True,
            tag = tags[count],
            **kwargs
        )
        count = count +1
