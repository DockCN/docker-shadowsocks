#!/bin/bash

if [[ "${SS_PASSWORD}" ]]; then
	/usr/local/bin/ssserver -k "${SS_PASSWORD}"
else
	/usr/local/bin/ssserver $@
fi
