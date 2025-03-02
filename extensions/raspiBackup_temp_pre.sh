#!/bin/bash
########################################################################################################################
#
# Sample plugin for raspiBackup.sh
# called before a backup is started
#
# Function: Display CPU temperature
#
# See http://www.linux-tips-and-tricks.de/raspiBackup for additional information
#
#######################################################################################################################
#
#    Copyright (c) 2015,2021 framp at linux-tips-and-tricks dot de
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.#
#
#######################################################################################################################

GIT_DATE="$Date: 2021-11-16 16:50:51 +0100$"
GIT_COMMIT="$Sha1: 2469c21$"

# define functions needed
# use local for all variables so the script namespace is not polluted

function getCPUTemp() {
	local temp=$(vcgencmd measure_temp | cut -d '=' -f 2)
	echo "$(echo $temp)"
}

# set any variables and prefix all names with ext_ and some unique prefix to use a different namespace than the script
ext_CPUTemp_pre=$(getCPUTemp)

