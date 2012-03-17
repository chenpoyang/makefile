################################################################
# Makefile for building: ALL_T
# Make:		GNU Make 3.82
################################################################

########## Compiler, tools and options

CC			= gcc
CXX			= g++
DEFINES		= -DMY_DEBUG
CFLAGS		= -O2 -Wall -g $(DEFINES)
CXXFLAGS	= -O2 -Wall -g $(DEFINES)
INCPATH		= -I.
LDFLAGS		= $(SYSLDFLAGS) $(MYLDFLAGS)
LIBS		= -l$(SYSLIBS) $(MYLIBS)
RM			= rm -f

# system options
SYSCFLAGS	=
SYSLDFLAGS	=
SYSLIBS		= pthread

# user options
MYCFLAGS	=
MYLDFLAGS	=
MYLIBS		=

# all target
ALL_T		= index

# all object
ALL_OBJ		= *.o

all:	$(ALL_T)

# link
index: index.o
	$(CC) -o index index.o $(LIBS)

# compile
index.o: index.c
	$(CC) $(CFLAGS) $(INCPATH)	-c -o index.o index.c

# pseudo-target
.PHONY: clean

# clean
clean:
	$(RM) $(ALL_OBJ) $(ALL_T)
