#!/bin/bash
echo Revice = rx
echo Transmit = tx
read direction

echo pick channel from 1 to 5
read chchannel
let channel1=$chchannel*700-200
let channel2=$chchannel*700-200+400

echo Rate of speed
echo recommended is 140
read ratespeed
clear
echo ---------------------
echo      $direction      
echo ---------------------
minimodem --quiet --sync-byte=0xAB --mark $channel1 --space $channel2 --stopbits 2.5 --ascii --$direction $ratespeed
