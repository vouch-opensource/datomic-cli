# Datomic CLI Tools on Docker

Run [Datomic CLI Tools](https://docs.datomic.com/cloud/operation/cli-tools.html) in a Docker container.

## Usage

Pass any arguments to the `datomic` command to the docker run command.
```bash
docker run vouchio/datomic-cli-tools <args>
```

**Example: start the datomic socks proxy**

```bash
docker run vouchio/datomic-cli-tools client access <system>
```

Specify AWS region and credentials:

```bash
docker run -e AWS_REGION=us-east-1 -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY \
  vouchio/datomic-cli-tools client access <system>
```

## Releases

Releases follow the versioning from Datomic CLI Tools [Releases](https://docs.datomic.com/cloud/releases.html). In case a newer version is available open an issue or PR.

# License
The scripts and documentation in this project are released under the [MIT License](LICENSE)

