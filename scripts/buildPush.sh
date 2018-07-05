COMPONENT=icp-cli

latest=1.0

echo Version $latest
./buildComponent.sh $COMPONENT $latest
./pushComponent.sh $COMPONENT $latest
