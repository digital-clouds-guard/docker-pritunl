set -o errexit -o nounset -o pipefail

require_main

########################################################################
# Config
########################################################################


DOCKER_TAG_SOURCE=${DOCKER_TAG_SOURCE:-docker-hub}
DOCKER_CACHE_FOLDER=${DOCKER_CACHE_FOLDER:-/data/local/cache/pritunl-build-cache}
DOCKER_BUILDX_NAME=${DOCKER_BUILDX_NAME:-pritunl-builder}
PUBLIC_ECR_REGISTRY=${PUBLIC_ECR_REGISTRY:-jippi}

# Repository names
REPO_NAME_GITHUB=${REPO_NAME_GITHUB:-jippi/docker-pritunl}
REPO_NAME_ECR=${REPO_NAME_ECR:-jippi/pritunl}
REPO_NAME_DOCKER_HUB=${REPO_NAME_DOCKER_HUB:-jippi/pritunl}

# List of releases to skip
SKIP=(
    1.29.2589.95 # this release do not ship binaries in github releases for some reason
)
