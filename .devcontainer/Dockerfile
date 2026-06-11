# ============================================================================
#  Dockerfile — "recipe" to build the course image
# ============================================================================
#  A Dockerfile is a text file with step-by-step instructions that
#  Docker (or Codespaces) reads from top to bottom to build an
#  "image". An image is like a frozen blueprint of a Linux system
#  ready to use; every time you open the Codespace, a
#  "container" is created from that blueprint.
#
#  Analogy: the image is the BLUEPRINT, the container is the HOUSE built
#  from that blueprint. You can build many identical houses from a
#  single blueprint, and if you destroy one house the blueprint stays intact.
#
#  Each instruction (FROM, ENV, RUN...) creates a "layer". Docker caches
#  those layers: if you don’t change the first lines, it won’t rebuild
#  them and the next build is almost instant.
# ============================================================================


# ----------------------------------------------------------------------------
# FROM: base image to build on
# ----------------------------------------------------------------------------
# Instead of starting from scratch, we use the official Kali Linux image
# in its "rolling" version (continuous updates, always up to date).
# Everything installed below is stacked ON TOP of this base.
FROM kalilinux/kali-rolling:latest


# ----------------------------------------------------------------------------
# ENV: permanent environment variables inside the container
# ----------------------------------------------------------------------------
# Environment variables are "global settings" that any program
# in the system can read. By convention they are written in UPPERCASE.
#
#   DEBIAN_FRONTEND=noninteractive
#     Tells the package installer (apt) "don’t ask me interactive
#     questions, assume default answers". Without this, some packages
#     would pause the build waiting for input and it would hang forever.
#
#   LANG / LC_ALL=es_ES.UTF-8
#     Sets language and character encoding. UTF-8 allows accents,
#     ñ, €, emojis, etc. to display correctly.
#
#   TERM=xterm-256color
#     Tells programs the terminal supports 256 colors, so vim, nvim,
#     htop, etc. display properly.
#
# The backslash "\" at the end of each line means "this continues
# on the next line".
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color


# ----------------------------------------------------------------------------
# Pre-answer to an interactive Wireshark prompt
# ----------------------------------------------------------------------------
# Wireshark/tshark asks during installation if non-root users
# should be allowed to capture packets. Since inside the container
# we are always root, we answer "false" IN ADVANCE using
# debconf-set-selections so the build does not stop waiting for input.

# Pipe (|) sends the output of one command as input to another command.
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections


# ----------------------------------------------------------------------------
# RUN: execute commands during image build
# ----------------------------------------------------------------------------
# Here we install ALL course software in a single RUN.
#
#   apt-get update          -> updates the list of available packages
#   apt-get install         -> downloads and installs listed packages
#     -y                    -> automatically answers "yes"
#     --no-install-recommends -> installs ONLY essential packages,
#                                not suggested extras (saves space).
#
# Why one big RUN instead of many small ones?
# Because EACH RUN creates a new layer. Fewer layers = smaller image,
# faster builds and downloads.
#
# "&&" chains commands: runs the next command ONLY IF the previous
# one succeeded. If something fails, the build stops with an error.

RUN apt-get update && apt-get install -y --no-install-recommends \
    \
    # === Text editors and shells ===
    neovim \
    vim \
    zsh \
    bash-completion \
    \
    # === 4th generation tools ===
    perl \
    make \
    gawk \
    sed \
    grep \
    \
    # === Basic UNIX utilities ===
    coreutils \
    findutils \
    procps \
    less \
    tree \
    jq \
    \
    # === Manual pages ===
    man-db \
    manpages \
    manpages-posix \
    \
    # === Networking and download utilities ===
    curl \
    wget \
    git \
    git-lfs \
    ca-certificates \
    locales \
    \
    # === Bash script linter ===
    shellcheck \
    \
    # === Network reconnaissance and scanning ===
    nmap \
    masscan \
    \
    # === Packet capture and analysis ===
    tcpdump \
    tshark \
    \
    # === Misc network utilities ===
    netcat-traditional \
    socat \
    dnsutils \
    whois \
    traceroute \
    mtr-tiny \
    iproute2 \
    net-tools \
    iputils-ping \
    \
    # === Anonymity: Tor and related ===
    tor \
    torsocks \
    proxychains4 \
    obfs4proxy \
    \
    # === User-friendly HTTP client ===
    httpie \
 \
 # --- After installing, enable Spanish locale ---
 # sed searches "# es_ES.UTF-8" in /etc/locale.gen and removes "#" to activate it
 # then locale-gen compiles the locale files.
 && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
 && locale-gen \
 \
 # --- Final cleanup: reduce image size ---
 # Remove unnecessary apt cache files within the same RUN.
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*


# ----------------------------------------------------------------------------
# SHELL: which shell to use in following RUN instructions
# ----------------------------------------------------------------------------
# By default Docker uses /bin/sh (more limited). We switch to bash
# for modern syntax support.
SHELL ["/bin/bash", "-c"]


# ----------------------------------------------------------------------------
# WORKDIR: default working directory
# ----------------------------------------------------------------------------
# Codespaces mounts the repository at /workspaces/<repo-name>.
# Setting /workspaces ensures terminals open near project files.
WORKDIR /workspaces


# Git configuration inside the container
RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system


# ----------------------------------------------------------------------------
# Setup custom Bash prompt
# ----------------------------------------------------------------------------
RUN cat >> /root/.bashrc <<'EOF'

__set_prompt(){
    local ec=$?
    local mark

    if [ $ec -eq 0 ]; then
        mark='\[\e[32m\]✓\[\e[0m\]'
    else
        mark="\[\e[31m\]✗ $ec\[\e[0m\]"
    fi

    PS1="\[\e[36m\][Luis-Quisnancela]\[\e[0m\] \[\e[33m\]\W\[\e[0m\] $mark \$ "
}

PROMPT_COMMAND=__set_prompt

EOF


# ----------------------------------------------------------------------------
# CMD: default command when container starts
# ----------------------------------------------------------------------------
CMD ["/usr/bin/bash"]