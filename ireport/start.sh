#!/bin/bash

if [[ ! -d "$HOME/reports" ]]; then
	mkdir $HOME/reports;
fi

chmod 777 $HOME/reports;

xhost local:root;

docker-compose up -d;