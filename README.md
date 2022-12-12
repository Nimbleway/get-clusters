# get-clusters

This repo will find all k8s clusters with specific name and environment,
This will be used for ci/cd on multiple clusters.

## Environment Variables

| Variable              | Details                                                 | Example                                    |
|-----------------------|---------------------------------------------------------|--------------------------------------------|
| ENVIRONMENT           | AWS Access Key for security group authorization.        | `staging`                                  |
| CLUSTER_NAME          | AWS Secret Access Key for security group authorization. | `webit`                                    |
