# Leasy

Linux, minus the friction. Atomic, Mac-like, terminal-optional.

Aurora (Fedora Atomic, KDE) + bootc. One image, signed, shipped daily.

## Layout

```
Containerfile    base + build
build_files/     build.sh (packages, units)
system_files/    overlaid onto /
disk_config/     qcow2 + ISO recipes
```

## Use

```sh
just build       # image
just build-vm    # qcow2
just run-vm      # boot it
just build-iso   # installer
```

Existing Atomic system:

```sh
sudo bootc switch --enforce-container-sigpolicy ghcr.io/ntedvs/leasy:latest
```

## Signing

```sh
COSIGN_PASSWORD="" cosign generate-key-pair
gh secret set SIGNING_SECRET < cosign.key
```

Commit `cosign.pub`. Never `cosign.key`.
