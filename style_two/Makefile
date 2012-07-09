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
RM          = rm -f

# all target
ALL_C_T		= main index
ALL_CXX_T   = a b
ALL_T       = $(ALL_C_T) $(ALL_CXX_T)

(ALL_T): $(ALL_C_T) $(ALL_CXX_T)

$(ALL_C_T): % : %.o
	$(CC) $(CFLAGS) -o $@ $<

$(ALL_CXX_T): % : %.o
	$(CXX) $(CXXFLAGS) -o $@ $<

.c.o:
	$(CC) $(CFLAGS) -c $^ -o $@

.cpp.o:
	$(CXX) $(CXXFLAGS) -c $^ -o $@

clean:
	$(RM) $(ALL_OBJ) $(ALL_T) $(ALL_LIB)
	$(RM) *.o

# list targets that do not create files
.PHONY: clean all

# DO NOT DELETE
