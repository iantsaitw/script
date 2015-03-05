#!/bin/bash

#-------------------------------------------#
#                                           #
#                                           #
#  This is a script that can automatically  #
#  download picture from HTTP address.      #
#                                           #
#                                           #
#-------------------------------------------#

# ----- CHANGE IFNO HERE ----- #

#THE PICTURE HTTP ADDRESS FRONTEND
name_frontend="http://vettri.net/gallery/celeb/anne_hathaway/15th-Annual-Screen-Actors-Guild-Awards/AnneHathaway-15th-Annual-SAG-Awards_Vettri.Net-"
#THE PICTURE HTTP ADDRESS BACKEND
name_backend=".jpg"

#SPECIFIED THE RANGE YOU WANT TO DOWNLOAD
declare -i lower=5
declare -i upper=23

# ----- DO NOT CHANGE HERE ----- #

declare -i counter=$lower

while [ $counter -le $upper ]
  do
	if [ $counter -lt 10 ]; then
	  echo wget $name_frontend"0"$counter$name_backend
	  wget $name_frontend"0"$counter$name_backend
	  counter=`expr $counter+1`
	else
	echo wget $name_frontend$counter$name_backend
	wget $name_frontend$counter$name_backend
	counter=`expr $counter+1`
	fi
  done
