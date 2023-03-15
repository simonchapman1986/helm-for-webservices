# webservices

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.0.1](https://img.shields.io/badge/AppVersion-v0.0.1-informational?style=flat-square)

A Helm chart for building webservices

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| app_config.enabled | bool | `true` |  |
| app_config.image.port | int | `8080` |  |
| app_config.image.pullPolicy | string | `"Always"` |  |
| app_config.image.repository | string | `""` |  |
| app_config.image.tag | string | `""` |  |
| app_config.replicaCount | int | `1` |  |
| app_config.service.port | int | `8080` |  |
| app_config.service.type | string | `"ClusterIP"` |  |
| configmap.enabled | bool | `true` |  |
| configmap.values.DJANGO_DEBUG | bool | `false` |  |
| configmap.values.LOG_LEVEL | string | `"ERROR"` |  |
| container_registry | string | `""` |  |
| mongo_config.enabled | bool | `false` |  |
| mongo_config.pvc | bool | `true` |  |
| mongo_config.service.enabled | bool | `false` |  |
| mongo_config.service.port | int | `27017` |  |
| mongo_config.service.type | string | `"ClusterIP"` |  |
| postgres_config.enabled | bool | `false` |  |
| postgres_config.image | string | `"postgres:latest"` |  |
| postgres_config.pvc | bool | `true` |  |
| postgres_config.service.enabled | bool | `false` |  |
| postgres_config.service.port | int | `5432` |  |
| postgres_config.service.type | string | `"ClusterIP"` |  |
| postgres_config.setup.password | string | `"postgres"` |  |
| postgres_config.setup.username | string | `"postgres"` |  |
| redis_config.enabled | bool | `false` |  |
| redis_config.pvc | bool | `true` |  |
| redis_config.service.enabled | bool | `false` |  |
| redis_config.service.port | int | `6379` |  |
| redis_config.service.type | string | `"ClusterIP"` |  |
| secrets.enabled | bool | `true` |  |
| secrets.values.DATABASE_HOST | string | `"postgres"` |  |
| secrets.values.DATABASE_NAME | string | `"postgres"` |  |
| secrets.values.DATABASE_PASSWORD | string | `"password"` |  |
| secrets.values.DATABASE_USERNAME | string | `"postgres"` |  |
| worker_config.enabled | bool | `false` |  |
| worker_config.image.entrypoint | string | `"./worker.sh"` |  |
| worker_config.image.port | int | `8080` |  |
| worker_config.image.pullPolicy | string | `"Always"` |  |
| worker_config.image.repository | string | `""` |  |
| worker_config.image.tag | string | `""` |  |
| worker_config.replicaCount | int | `1` |  |

