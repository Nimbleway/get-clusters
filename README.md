# get-clusters

This repo will find all k8s clusters with specific name and environment,
This will be used for ci/cd on multiple clusters.

## Environment Variables

| Variable              | Details                                                 | Example                                    |
|-----------------------|---------------------------------------------------------|--------------------------------------------|
| ENVIRONMENT           | Environment Name.                                       | `staging`                                  |
| CLUSTER_NAME          | Cluster Name.                                           | `webit`                                    |
| GET_ALL               | Flag To Get All Clusters.                               | `true\false`                               |
