
#!/usr/bin/env python
import boto3
import json

# Fetch EC2 instances by tag
ec2 = boto3.client('ec2', region_name='ap-south-1')
instances = ec2.describe_instances(Filters=[{'Name': 'instance-state-name', 'Values': ['running']}])
hosts = [i['PublicIpAddress'] for r in instances['Reservations'] for i in r['Instances'] if i.get('PublicIpAddress')]

print(json.dumps({"all": {"hosts": hosts}}))
