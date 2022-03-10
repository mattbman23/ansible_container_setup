# Prereqs:

    - configure your private/public key
    - copy your public key (id_rsa.pub) usually located at ~/.ssh into the helpers folder as a file called "authorized_keys"

### Good to have
    - GNU Make to use Makefile

### You might need to clear your "known_hosts" file content of the ssh your will try to connect to

    - run the "clearKnownHosts" task from Makefile

### Usage

## To build client containers for ansible

# With GNU Make
Run the proper make targets, example to build a fedora container
    run `make fedoraBuild` in your command line.

# Without GNU Make
    Run the proper docker/podman commands to build the images. 