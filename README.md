# Dashboard-deploy

Configuration files to deploy the FLOTO dashboard in a production environment.

## Set up

Clone this repository. Follow [the configuration steps for portal](https://github.com/UChicago-FLOTO/dashboard/blob/main/README.md#configuration) i.e. create a `.env` file and `config` directory.

Add a variable `FLOTO_DASHBOARD_TAG` to the `.env` file with the latest docker image tag. Typically this comes from [GitHub actions CI](https://github.com/UChicago-FLOTO/dashboard/actions).

Run `make deploy` to bring up the containers. This command will automatically run any migrations.

## Upgrading the dashboard.

To upgrade the dashboard to a new version, simply run `make deploy` again after changing `FLOTO_DASHBOARD_TAG` in the environment file.
