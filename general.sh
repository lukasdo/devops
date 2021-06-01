#Initial execution for setting up ECR with a new reop and ecs with a service and task definition
#create repo in ecr
aws ecr create-repository --repository-name hello-world

#create pipeline
aws codepipeline create-pipeline --cli-input-json file://pipeline.json

#create ecs service
aws ecs create-service --service-name my-service --cli-input-json file://createECSservice.json

#create ecs task
aws ecs register-task-definition --cli-input-json file://taskdef.json
