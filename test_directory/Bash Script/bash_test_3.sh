#!/bin/bash
COUNTER=20
until [ $COUNTER -lt 10 ]; do
	echo COUNTER is at $COUNTER
	let COUNTER-=1
done