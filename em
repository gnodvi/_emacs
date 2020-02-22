#!/bin/bash
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# http://stackoverflow.com/questions/630372/
# determine-the-path-of-the-executing-bash-script
#

SCRIPT_PATH=$(dirname $(readlink -f $0))     

SCRIPT_PATH="`( cd \"$SCRIPT_PATH\" && pwd )`"  # absolutized and normalized


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#  test - check file types and compare values
#  -z STRING
#     the length of STRING is zero
# #
# #
# if [ -z "$SCRIPT_PATH" ] ; then
#   # error; for some reason, the path is not accessible
#   # to the script (e.g. permissions re-evaled after suid)
#   exit 1  # fail
# fi


#echo $SCRIPT_PATH
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RES=$(xdpyinfo | awk '/dimensions/{print $2}')

#FIL=~/.X.$RES.em
FIL=$SCRIPT_PATH/.X.$RES.em

if [ -f "$FIL" ]; then
    #echo "$FILE exist"
    xrdb -load $FIL
else 
    #echo "$FILE does not exist"
    xrdb -load $SCRIPT_PATH/.X.em
fi


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

COLOR='bisque'
#GEOMS='94x58+1170+175'


#-fn "-rfx-*-bold-*-*-*-13-*-*-*-*-*-*-*" 

# env  UEMACS=$SCRIPT_PATH/uemacs   emacs -cr red -fn "-rfx-*-bold-*-*-*-13-*-*-*-*-*-*-*"  \
#    --xrm "emacs.Background: $COLOR"  \
#    $1 $2 $3 $4 $5  &

# env  UEMACS=$SCRIPT_PATH/uemacs   emacs -cr red \
#     --xrm "emacs.Background: $COLOR"  \
#     --xrm "emacs.default.attributeFont: -rfx-*-bold-*-*-*-13-*-*-*-*-*-*-*"  \
#     $1 $2 $3 $4 $5  &

# env  UEMACS=$SCRIPT_PATH/uemacs  Emacs.default.attributeFont="-rfx-*-bold-*-*-*-13-*-*-*-*-*-*-*" emacs -cr red \
#     --xrm "emacs.Background: $COLOR"  \
#     $1 $2 $3 $4 $5  &


#EMACS_PROG=/usr/bin/emacs
EMACS_PROG=emacs

HOME_SAVE=$HOME

HOME=$SCRIPT_PATH/uemacs

env  UEMACS=$SCRIPT_PATH/uemacs  $EMACS_PROG -cr red --no-splash \
    --xrm "emacs.Background: $COLOR"  \
    $1 $2 $3 $4 $5  2> /dev/null  &  

HOME=$HOME_SAVE

# env  UEMACS=$SCRIPT_PATH/uemacs  emacs -cr red -fn "-rfx-*-bold-*-*-*-13-*-*-*-*-*-*-*"\
#     \
#     $1 $2 $3 $4 $5  &


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#    --xrm "emacs.Background: $COLOR"  \
#    --xrm "emacs.Geometry:   $GEOMS"  \

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# xrdb -n ~/.Xdefaults

# Emacs.geometry: 94x52+940+210

# Emacs.default.attributeFont: -rfx-*-bold-*-*-*-13-*-*-*-*-*-*-*

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
