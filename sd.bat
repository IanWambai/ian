@echo off
start spork minitest
PING 1.1.1.1 -n 1 -w 10000 >NUL
start autotest
start rails s
