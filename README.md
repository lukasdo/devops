# Pipeline approach using AWS ( University project )

![Untitled Diagram-4](https://user-images.githubusercontent.com/44913260/120380793-e8ae3480-c321-11eb-83ae-a763d620cd2d.png)

## Creating a version control system using CodeCommit.
![image](https://user-images.githubusercontent.com/44913260/120382881-78ed7900-c324-11eb-8ee7-356471a5d68f.png)
The buildspec.yml file needs to be included in the repository as well as the dockerfiles. Buildspec.yml will be required by CodeBuild as input.

## Create a CodeBuild project

![image](https://user-images.githubusercontent.com/44913260/120383388-1d6fbb00-c325-11eb-9c7d-2042227e7a7b.png)

Specify the previously created CodeCommit repository as source.

Initial steps:
Execute the general.sh file in the aws cli.
This will create an ECR repository, an ECS service and an ECS task.

After that we can create the CodePipeline using the previously created services.



## Setting up CodePipeline
![image](https://user-images.githubusercontent.com/44913260/120381246-7ab63d00-c322-11eb-8f80-218d4429c3da.png)

Link the CodeBuild project

![image](https://user-images.githubusercontent.com/44913260/120381720-18aa0780-c323-11eb-9eee-07b9e90d60fd.png)

Choose the existing ECS cluster

![image](https://user-images.githubusercontent.com/44913260/120381835-3f683e00-c323-11eb-906e-399cd2bee240.png)

