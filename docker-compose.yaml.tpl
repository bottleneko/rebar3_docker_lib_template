version: '3.7'

services:
  workspace:
    build:
      context: .
      args:
        PUID: ${PUID}
        PGID: ${PGID}
    restart: unless-stopped
    init: true
    command: sleep infinity
    volumes:
      - .:/workspace
