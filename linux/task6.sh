#!/bin/bash

IPV4_ADDRESS=`ip addr show | grep "inet " | awk '{print $2}'`

IF_IPV4_ADDRESS_FORMAT_NOT_EQUAL="inet "

IF_IPV4_ADDRESS_NOT_FOUND="No IP address found"

echo "Your server IP address is $IPV4_ADDRESS"
IPV6_ADDRESS=`ip addr show | grep "inet6 " | awk '{print $2}'`

IF_IPV6_ADDRESS_FORMAT_NOT_EQUAL="inet6 "

IF_IPV6_ADDRESS_NOT_FOUND="No IP address found"

echo "Your server IP address is $IPV6_ADDRESS"
