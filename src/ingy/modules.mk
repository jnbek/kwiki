INGY_PATHS = \
	Document \
	Document/AST \
	IO \
	IO/All \
	Module \
	Module/Compile \
	Module/Install \
	Module/Install/Admin \
	Module/Make \
	Script \
	Test \
	YAML \
	YAML/Dumper \
	YAML/Loader \

INGY_LEVEL_1 = \
	XXX.pm \
	YAML.pm \

INGY_LEVEL_2 = \
	Document/AST.pm \
	Document/Parser.pm \
	Document/Tools.pm \
	IO/All.pm \
	Module/Compile.pm \
	Module/Optimize.pm \
	Module/Make.pm \
	Script/Hater.pm \
	Test/YAML.pm \
	YAML/Base.pm \
	YAML/Dumper.pm \
	YAML/Error.pm \
	YAML/Loader.pm \
	YAML/Marshall.pm \
	YAML/Node.pm \
	YAML/Tag.pm \
	YAML/Types.pm \

INGY_LEVEL_3 = \
	Document/AST/Tree.pm \
	IO/All/Base.pm \
	IO/All/DBM.pm \
	IO/All/Dir.pm \
	IO/All/File.pm \
	IO/All/Filesys.pm \
	IO/All/Link.pm \
	IO/All/MLDBM.pm \
	IO/All/Pipe.pm \
	IO/All/Socket.pm \
	IO/All/STDIO.pm \
	IO/All/String.pm \
	IO/All/Temp.pm \
	Module/Compile/Opt.pm \
	Module/Install/PMC.pm \
	Module/Make/Base.pm \
	Module/Make/Config.pm \
	Module/Make/Maker.pm \
	YAML/Dumper/Base.pm \
	YAML/Loader/Base.pm \

INGY_LEVEL_4 = \
	Module/Install/Admin/PMC.pm \

INGY_MODULES = $(INGY_LEVEL_1) $(INGY_LEVEL_2) $(INGY_LEVEL_3) $(INGY_LEVEL_4) 

ingy: $(INGY_PATHS) $(INGY_MODULES)

$(INGY_LEVEL_1):
	ln -fs ../src/ingy/*/lib/$@ $@
$(INGY_LEVEL_2):
	cd dummy; \
	lib=../../src/ingy/*/lib/$@; \
	ln -fs $$lib ../$@;
$(INGY_LEVEL_3):
	cd dummy/dummy; \
	lib=../../../src/ingy/*/lib/$@; \
	ln -fs $$lib ../../$@;
$(INGY_LEVEL_4):
	cd dummy/dummy/dummy; \
	lib=../../../../src/ingy/*/lib/$@; \
	ln -fs $$lib ../../../$@;
