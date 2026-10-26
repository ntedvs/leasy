# Leasy

Linux, minus the friction. Atomic, Mac-like, terminal-optional.

Aurora (Fedora Atomic, KDE) + bootc. One image, signed, shipped daily.

```
leasy.containerfile   base + build
build.sh              packages, units
root/                 overlaid onto /
disk/                 vm + iso recipes
.github/workflows/    image (daily), disk (on demand)
```

## Install

Actions -> disk -> Run. Grab `leasy-anaconda-iso` or `leasy-qcow2`.

Or, from any Atomic system:

```sh
sudo bootc switch --enforce-container-sigpolicy ghcr.io/ntedvs/leasy:latest
```

## Build locally

```sh
podman build -f leasy.containerfile -t leasy .
```

## Signing

```sh
COSIGN_PASSWORD="" cosign generate-key-pair
gh secret set SIGNING_SECRET < cosign.key
```

Commit `cosign.pub`. Never `cosign.key`.
