#!/bin/bash

/usr/bin/rclone serve webdav \
    --config=/config/rclone.conf \
    --addr :5574 \
    --user ${WEBDAV_USERNAME} \
    --pass ${WEBDAV_PASSWORD} \
    --max-header-bytes=8192 \
    --transfers=1 \
    --multi-thread-streams=1 \
    --no-modtime \
    --vfs-read-chunk-size=10M \
    --vfs-read-chunk-size-limit=10M \    
    --stats 60s \
    -v \
    /storage