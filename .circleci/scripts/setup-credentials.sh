unset  AWS_SESSION_TOKEN
temp_credentials=$(aws sts assume-role --role-arn "arn:aws:iam::$1:role/circleci_deployment_role" --duration-seconds 900 --role-session-name "deployment")
export AWS_ACCESS_KEY_ID=$(echo "$temp_credentials" | jq .Credentials.AccessKeyId | xargs)
export AWS_SECRET_ACCESS_KEY=$(echo "$temp_credentials" | jq .Credentials.SecretAccessKey | xargs)
export AWS_SESSION_TOKEN=$(echo "$temp_credentials" | jq .Credentials.SessionToken | xargs)