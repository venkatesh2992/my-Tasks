#!/bin/bash
fun check_usuage()
{
	echo "The Memory usuage is"
	free -h
	echo ""
}
fun check_cpu()
{
	echo "The CPU usuage is"
	uptime
	echo ""
}
fun check_diskusuage()
{
	echo "The Diskusuage is"
	df -kh
	echo ""
}
fun check_hostname()
{
	echo "The server HOSTNAME is"
	HOSTNAME
}

