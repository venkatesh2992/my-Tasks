#!/bin/bash
function check_usuage ()
{
	echo "The Memory usuage is"
	free -h
	echo ""
}
#!/on check_memory ()
{
        echo ""
                echo "Memory usage"
                free -h
        echo ""
}

function check_cpu()
{
        echo ""
                echo "CPU load"
        echo ""
                uptime
        echo ""
}
function check_disk()
{
        echo ""
                echo "Disk connection"
        echo ""
                df -kh
        echo ""
}

function check_hostname ()
{
	echo "The server HOSTNAME is"
	HOSTNAME
}
check_memory
check_cpu
check_disk
check_hostname

