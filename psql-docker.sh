#!/bin/bash

ID=$(docker ps --filter publish=5432 --format "{{.ID}}"| head -1)
if [ -z "$ID" ]; then
	echo "Please start ${NAME}"
	exit 1
fi

HAS_USER=0

for i in "$@"; do
	if [ "$i" = "-U" ]; then
		HAS_USER=1
	fi
done

if [ $HAS_USER = 1 ];then
	docker exec -it ${ID} psql "$@"
else
	docker exec -it ${ID} psql -U postgres "$@"
fi

