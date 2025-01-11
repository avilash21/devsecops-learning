#!/bin/bash
#
#Name:Avilash
#Desc: This shell helps create a for loop to show time for next 10 seconds using awk






for I in {1..10};
do
       	echo $(date) | awk -F " " '{print $2,$3,$4}' ;
	sleep 1;
done
