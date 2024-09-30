# Description

This project is a basic template that allows gcc development to proceed within a Docker container.

# Development in Container

Run the following command to start the Docker container.

```bash
docker compose up -d
```

From then on, development can proceed within the Docker container.

```bash
docker compose exec gcc bash
```

Alternatively, it may be more convenient to develop using VS Code's container connection facility.

* ‘Attach a Running Container...’ at the bottom left of the VS Code window.
* Select ‘Open a Remote Window’.
* Select a running container (e.g. with a name like ‘gcc-project-template-gcc-1’).
