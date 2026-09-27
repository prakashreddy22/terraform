
#   aws ec2 describe-instances  --query "Reservations[].Instances[].[InstanceId,State.Name,Tags[?Key=='Name']|[0].Value]" --output table

# aws ec2 describe-instances --query "Reservations[].Instances[].[InstanceId,PublicIpAddress]" --output table

# aws ec2 describe-instances --query "Reservations[].Instances[].[Tags[?Key=='Name']|[0].Value, InstanceId, PublicIpAddress]" --output table