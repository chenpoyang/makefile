####################################################################
# For building: ALL_T
# make version:	GNU Make 3.82
# g++ version:	gcc version 4.5.1
# gcc version:	g++ version 4.5.1
####################################################################

#### === CHANGE THE SETTINGS BELOW TO SUIT YOUR ENVIRONMENT === ####

# ENTRANCE
ENTRANCE	= none

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

# == END SETTINGS -- NO NEED TO CHANGE ANYTHING BELOW THIS LINE == #

# all target
ALL_T		= index

# all object
ALL_OBJ		= *.o

# Targets start here
default:	$(ENTRANCE)

all:	$(ALL_T)

# link
index: index.o
	$(CC) -o index index.o $(LIBS)

# compile
index.o: index.c
	$(CC) $(CFLAGS) $(INCPATH)	-c -o index.o index.c

none:
	@echo "Please do 'make OPTIONS' wehre OPTIONS is one of these:"
	@echo "	$(ALL_T) all"

# pseudo target
.PHONY: clean default none

# clean
clean:
	$(RM) $(ALL_OBJ) $(ALL_T)
