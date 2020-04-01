#taking name from user
echo "Enter the stack name to be created"
read sName

#declaring values
mAwsRegion=
mVPCName=
mVPCSubnetCidrBlock=
mAvailabilityZone1=
mAvailabilityZone2=
mAvailabilityZone3=
mSubnetCidrBlock1=
mSubnetCidrBlock2=
mSubnetCidrBlock3=
mRouteIpaddress=
mkeyName=
mAmiId=
mEC2InstanceSize=
mRDSInstanceSize=
mRDSPublicAccessibility=
mNameTag=
mAccountno=
mDBUsername=
mDBPassword=
mCircleciusername=
mdeploybucket=
mDomainName=
mfromaddress=
StackName=$sName

echo "$sName Stack creation in progress..."

#command build
stackID=$(aws cloudformation create-stack \
  --stack-name $sName \
  --template-body file://lambda_SES.json \
  --region $mAwsRegion \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters \
  ParameterKey=VPCName,ParameterValue=$mVPCName \
  ParameterKey=VPCSubnetCidrBlock,ParameterValue=$mVPCSubnetCidrBlock \
  ParameterKey=AvailabilityZone1,ParameterValue=$mAvailabilityZone1 \
  ParameterKey=AvailabilityZone2,ParameterValue=$mAvailabilityZone2 \
  ParameterKey=AvailabilityZone3,ParameterValue=$mAvailabilityZone3 \
  ParameterKey=PublicSubnetCidrBlock1,ParameterValue=$mSubnetCidrBlock1 \
  ParameterKey=PublicSubnetCidrBlock2,ParameterValue=$mSubnetCidrBlock2 \
  ParameterKey=PublicSubnetCidrBlock3,ParameterValue=$mSubnetCidrBlock3 \
  ParameterKey=RouteIpaddress,ParameterValue=$mRouteIpaddress \
  ParameterKey=keyName,ParameterValue=$mkeyName \
  ParameterKey=AmiId,ParameterValue=$mAmiId \
  ParameterKey=EC2InstanceSize,ParameterValue=$mEC2InstanceSize \
  ParameterKey=RDSInstanceSize,ParameterValue=$mRDSInstanceSize \
  ParameterKey=RDSPublicAccessibility,ParameterValue=$mRDSPublicAccessibility \
  ParameterKey=NameTag,ParameterValue=$mNameTag \
  ParameterKey=Accountno,ParameterValue=$mAccountno \
  ParameterKey=DBUsername,ParameterValue=$mDBUsername \
  ParameterKey=DBPassword,ParameterValue=$mDBPassword \
  ParameterKey=Circleciusername,ParameterValue=$mCircleciusername \
  ParameterKey=deploybucket,ParameterValue=$mdeploybucket \
  ParameterKey=DomainName,ParameterValue=$mDomainName \
  ParameterKey=fromaddress,ParameterValue=$mfromaddress \
  ParameterKey=VPCName,ParameterValue=$StackName \
  --query [StackId] --output text)

#commnad execution
#aws cloudformation wait stack-create-complete --stack-name $stackID

echo $stackID

if [ -z $stackID ]; then
  echo 'Error. Stack creation failed !!!'
  exit 1
else
  echo "Stack Creation Done !!!"
fi
