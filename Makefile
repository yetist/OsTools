

COMPILE_FILE_C = main.c struct.c gpio.c rtc.c acpi.c conf.c pci.c vtpa.c ParseGmac.c spi.c mps.c i2c.c spd.c
COMPILE_FILE_O = main.o struct.o gpio.o rtc.o acpi.o conf.o pci.o vtpa.o ParseGmac.o spi.o mps.o i2c.o spd.o

all: OsTools
##.PHONY all SEnd
OsTools : OsTools.o
	gcc $(COMPILE_FILE_O) -o OsTools
	chmod 777 OsTools
OsTools.o :
	gcc -g -c $(COMPILE_FILE_C) 

clean :
	rm *.o OsTools
