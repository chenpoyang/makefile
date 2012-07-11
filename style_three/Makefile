####################################################################
# For building: ALL_T
# make version:	GNU Make 3.82
# g++ version:	gcc version 4.7.0
# gcc version:	g++ version 4.7.0
####################################################################

#### === CHANGE THE SETTINGS BELOW TO SUIT YOUR ENVIRONMENT === ####

########## Compiler, tools and options

CC			= gcc
CXX         = g++
CFLAGS		= -O2 -Wall -g -fPIC $(DEFINES)
CXXFLAGS	= -O2 -Wall -g -fPIC $(DEFINES)
DEFINES     =
RM          = rm -f

# all target
ALL_C_OBJ   = index.o main.o
ALL_CXX_OBJ =
ALL_OBJ     = $(ALL_C_OBJ) $(ALL_CXX_OBJ)

ALL_C_LIB   =
ALL_CXX_LIB =
ALL_LIB     = $(ALL_C_LILB) $(ALL_CXX_LIB)

ALL_C_T		= main
ALL_CXX_T   =
ALL_T       = $(ALL_C_T) $(ALL_CXX_T)

all:$(ALL_OBJ) $(ALL_LIB) $(ALL_T)

main:$(ALL_OBJ)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	$(RM) $(ALL_OBJ) $(ALL_T) $(ALL_LIB)
	$(RM) *.o

# list targets that do not create files
.PHONY: clean all

# DO NOT DELETE
index.o: index.c index.h
main.o: main.c main.h
