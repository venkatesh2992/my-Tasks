#!/bin/bash
function check_usuage ()
{
	echo "The Memory usuage is"
	free -h
	echo ""
}
function check_cpu ()
{
	echo "The CPU usuage is"
	uptime
	echo ""
}
function check_diskusuage ()
{
	echo "The Diskusuage is"
	df -kh
	echo ""
}
function check_hostname ()
{
	echo "The server HOSTNAME is"
	HOSTNAME
}

