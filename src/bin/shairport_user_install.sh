#!/bin/bash

USER=shairport

getent group $USER &>/dev/null || groupadd -r $USER >/dev/null
getent passwd $USER &> /dev/null || useradd -r -M -g $USER -s /usr/bin/nologin -G audio $USER >/dev/null
