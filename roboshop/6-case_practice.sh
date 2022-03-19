#!/bin/bash

x="abc"

case $x in
 abc)
 	echo x = abc
 	;;
 xyz)
 	echo x =xyz
 	;;
 *)
 	echi x is neither abc or xyz
 	;;
esac
