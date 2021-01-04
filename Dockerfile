FROM classiccontainers/dosbox

# Retrieve game data from archive.org
ADD --chown=dosbox:dosbox https://archive.org/download/ColossalCave1984WillieCrowtherJerryD.PohlAdventureInteractiveFiction/ColossalCave.zip colossal_cave.zip

# Extract game, remove original zip
RUN unzip colossal_cave.zip && \
    rm colossal_cave.zip

# Copy dosbox conf with Colossal Cave autoexec
COPY --chown=dosbox:dosbox dosbox_colossal.conf dosbox_colossal.conf

# Add above dosbox conf to dosbox command line
CMD ["-conf", "dosbox_colossal.conf"]
