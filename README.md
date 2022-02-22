# Disclaimer

This repository was born from a wish of creating a schema registry deployment that uses ACL and Basic Auth for Authentication/Authorization.

However, this feature at the time of writing this is not mature in the Schema Registry code and as such this code is currently not maintained.

It is still used for reference purposes.

# Schema Registry

This repository contains some kubernetes manifests that can be used to deploy schema registry to kubernetes.

# Local test

You can test it on your preferred environment using docker-compose:

```
cp .env.example > .env
# Populate the .env file with your values
docker-compose up
```

Keep in mind that if you want to use a local broker, you have to add kafka and zookeeper containers to the compose-file.
If you choose to do so please create a PR on it so we can all take part in the fun.

# Deployment

See `azure-pipelines.yaml`.

# Upgrading to new version

Read the schema registry docs and see if there are breaking changes since the last version.

Then, change the tag of the image and deploy.
