#!/bin/bash
echo Revice = rx
echo Transmit = tx
read direction

echo pick channel from 1 to 6
read chchannel
let channel1=$chchannel*1000
let channel2=$chchannel*1000+300

echo Rate of speed
echo recommended is 140
read ratespeed
clear
echo ---------------------
echo      $direction      
echo ---------------------
minimodem --quiet --sync-byte=0xAB --mark $channel1 --space $channel2 --stopbits 2.5 --ascii --$direction $ratespeed
