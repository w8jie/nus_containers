#!/bin/bash

kubectl run netshoot \
    -ti \
    --restart=Never -- rm \
    --image=nicolaka/netshoot -- /bin/bash