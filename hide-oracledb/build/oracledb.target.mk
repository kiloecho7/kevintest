# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := oracledb
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=oracledb' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O0 \
	-gdwarf-2 \
	-mmacosx-version-min=10.5 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=gnu++0x \
	-fno-threadsafe-statics \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Debug :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Debug :=

INCS_Debug := \
	-I/Users/kevin.edwards/.node-gyp/4.4.7/include/node \
	-I/Users/kevin.edwards/.node-gyp/4.4.7/src \
	-I/Users/kevin.edwards/.node-gyp/4.4.7/deps/uv/include \
	-I/Users/kevin.edwards/.node-gyp/4.4.7/deps/v8/include \
	-I/opt/oracle/instantclient/sdk/include \
	-I$(srcdir)/src/dpi/src \
	-I$(srcdir)/src/dpi/include \
	-I$(srcdir)/node_modules/nan

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=oracledb' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-Os \
	-gdwarf-2 \
	-mmacosx-version-min=10.5 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Release := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=gnu++0x \
	-fno-threadsafe-statics \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Release :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Release :=

INCS_Release := \
	-I/Users/kevin.edwards/.node-gyp/4.4.7/include/node \
	-I/Users/kevin.edwards/.node-gyp/4.4.7/src \
	-I/Users/kevin.edwards/.node-gyp/4.4.7/deps/uv/include \
	-I/Users/kevin.edwards/.node-gyp/4.4.7/deps/v8/include \
	-I/opt/oracle/instantclient/sdk/include \
	-I$(srcdir)/src/dpi/src \
	-I$(srcdir)/src/dpi/include \
	-I$(srcdir)/node_modules/nan

OBJS := \
	$(obj).target/$(TARGET)/src/njs/src/njsOracle.o \
	$(obj).target/$(TARGET)/src/njs/src/njsPool.o \
	$(obj).target/$(TARGET)/src/njs/src/njsConnection.o \
	$(obj).target/$(TARGET)/src/njs/src/njsResultSet.o \
	$(obj).target/$(TARGET)/src/njs/src/njsMessages.o \
	$(obj).target/$(TARGET)/src/njs/src/njsIntLob.o \
	$(obj).target/$(TARGET)/src/dpi/src/dpiEnv.o \
	$(obj).target/$(TARGET)/src/dpi/src/dpiEnvImpl.o \
	$(obj).target/$(TARGET)/src/dpi/src/dpiException.o \
	$(obj).target/$(TARGET)/src/dpi/src/dpiExceptionImpl.o \
	$(obj).target/$(TARGET)/src/dpi/src/dpiConnImpl.o \
	$(obj).target/$(TARGET)/src/dpi/src/dpiDateTimeArrayImpl.o \
	$(obj).target/$(TARGET)/src/dpi/src/dpiPoolImpl.o \
	$(obj).target/$(TARGET)/src/dpi/src/dpiStmtImpl.o \
	$(obj).target/$(TARGET)/src/dpi/src/dpiUtils.o \
	$(obj).target/$(TARGET)/src/dpi/src/dpiLob.o \
	$(obj).target/$(TARGET)/src/dpi/src/dpiCommon.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))
$(OBJS): GYP_OBJCFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(CFLAGS_OBJC_$(BUILDTYPE))
$(OBJS): GYP_OBJCXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(CFLAGS_OBJCC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.5 \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Debug := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first

LDFLAGS_Release := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.5 \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Release := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first

LIBS := \
	-lclntsh \
	-L/opt/oracle/instantclient/ -Wl,-rpath,/opt/oracle/instantclient/

$(builddir)/oracledb.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/oracledb.node: LIBS := $(LIBS)
$(builddir)/oracledb.node: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/oracledb.node: TOOLSET := $(TOOLSET)
$(builddir)/oracledb.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(builddir)/oracledb.node
# Add target alias
.PHONY: oracledb
oracledb: $(builddir)/oracledb.node

# Short alias for building this executable.
.PHONY: oracledb.node
oracledb.node: $(builddir)/oracledb.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/oracledb.node

