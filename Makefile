TARGET=pc
SKINTARGET=rs97
DEBUG=0

BUILDTIME=$(shell date +'\"%Y-%m-%d %H:%M\"')

ifeq ($(DEBUG),0)
  CROSS_COMPILE=
endif

#SYSROOT=/home/luali/rs97_toolchain/os/usr/mipsel-buildroot-linux-uclibc/sysroot/

CC = $(CROSS_COMPILE)gcc
CXX = $(CROSS_COMPILE)g++
STRIP = $(CROSS_COMPILE)strip

SYSROOT     := $(shell $(CC) --print-sysroot)
SDL_CFLAGS  := $(shell $(SYSROOT)/usr/bin/sdl-config --cflags)
SDL_LIBS    := $(shell $(SYSROOT)/usr/bin/sdl-config --libs)

CFLAGS = -ggdb -DTARGET_RETROGAME -DTARGET=$(TARGET) -DLOG_LEVEL=3 -Wall -Wundef -Wno-deprecated -Wno-unknown-pragmas -Wno-format -g3 $(SDL_CFLAGS) -I/usr/include/SDL/ -std=c++11 -D__BUILDTIME__="$(BUILDTIME)"
CXXFLAGS = $(CFLAGS)
LDFLAGS = $(SDL_LIBS) -lSDL_image -lSDL_ttf -lSDL_gfx -lpthread -lSDL

OBJDIR = objs/$(TARGET)
DISTDIR = dist/$(TARGET)/gmenu2x
APPNAME = $(OBJDIR)/gmenu2x

SOURCES := $(wildcard src/*.cpp)
OBJS := $(patsubst src/%.cpp, $(OBJDIR)/src/%.o, $(SOURCES))

# File types rules
$(OBJDIR)/src/%.o: src/%.cpp src/%.h
	$(CXX) $(CFLAGS) -o $@ -c $<

all: dir shared

dir:
	@if [ ! -d $(OBJDIR)/src ]; then mkdir -p $(OBJDIR)/src; fi

debug: $(OBJS)
	@echo "Linking gmenu2x-debug..."
	$(CXX) -o $(APPNAME)-debug $(LDFLAGS) $(OBJS) $(LDFLAGS) 

shared: debug
	$(STRIP) $(APPNAME)-debug -o $(APPNAME)

clean:
	rm -rf $(OBJDIR) $(DISTDIR) *.gcda *.gcno $(APPNAME)

dist: dir shared
	install -m755 -D $(APPNAME)-debug $(DISTDIR)/gmenu2x
ifeq ($(DEBUG),0)
	install -m644 assets/$(TARGET)/input.conf $(DISTDIR)
else
	install -m644 assets/pc/input.conf $(DISTDIR)
endif
	install -m755 -d $(DISTDIR)/sections/applications $(DISTDIR)/sections/emulators $(DISTDIR)/sections/games $(DISTDIR)/sections/settings
	install -m644 -D README.rst $(DISTDIR)/README.txt
	install -m644 -D COPYING $(DISTDIR)/COPYING
	install -m644 -D ChangeLog $(DISTDIR)/ChangeLog
	cp -RH assets/skins assets/translations $(DISTDIR)
	cp -RH assets/$(SKINTARGET)/BlackJeans.png $(DISTDIR)/skins/Default/wallpapers
	cp -RH assets/$(SKINTARGET)/skin.conf $(DISTDIR)/skins/Default
	cp -RH assets/$(SKINTARGET)/font.ttf $(DISTDIR)/skins/Default
	cp -RH assets/$(SKINTARGET)/gmenu2x.conf $(DISTDIR)
	cp -RH assets/$(SKINTARGET)/icons/* $(DISTDIR)/skins/Default/icons/
	cp -RH assets/$(SKINTARGET)/emulators/* $(DISTDIR)/sections/emulators/
	cp -RH assets/$(SKINTARGET)/games/* $(DISTDIR)/sections/games/
	cp -RH assets/$(SKINTARGET)/applications/* $(DISTDIR)/sections/applications/

-include $(patsubst src/%.cpp, $(OBJDIR)/src/%.d, $(SOURCES))

$(OBJDIR)/src/%.d: src/%.cpp
	@if [ ! -d $(OBJDIR)/src ]; then mkdir -p $(OBJDIR)/src; fi
	$(CXX) -M $(CXXFLAGS) $< > $@.$$$$; \
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.$$$$ > $@; \
	rm -f $@.$$$$
