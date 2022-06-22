#! /bin/bash
end=$((SECONDS+200))
while [ $SECONDS -lt $end ]; do
	echo "Progress update: ";
	echo $SECONDS "/" $end "seconds";
	echo "Now waiting for 2 seconds before killing Sophos ...";
	sleep 2;
	sudo kill $(pidof SophosScanD);
done

echo "... Finished ... Exiting"

