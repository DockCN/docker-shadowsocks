#!/bin/sh

if [[ "${SS_PASSWORD}" ]]; then
	ssserver -k "${SS_PASSWORD}"
else
	ssserver $@
fi
