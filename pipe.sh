#!/bin/bash

# Get login for AWS CLI
$(aws ecr get-login --no-include-email --region $AWS_REGION)

# Tag and push the image to ECR
docker tag ${IMAGE_NAME}:${IMAGE_TAG} ${AWS_ECR_URL}/${IMAGE_NAME}:${IMAGE_TAG}
docker push ${AWS_ECR_URL}/${IMAGE_NAME}:${IMAGE_TAG}
