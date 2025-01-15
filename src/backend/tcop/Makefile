#-------------------------------------------------------------------------
#
# Makefile--
#    Makefile for tcop
#
# IDENTIFICATION
#    src/backend/tcop/Makefile
#
#-------------------------------------------------------------------------

subdir = src/backend/tcop
top_builddir = ../../..
include $(top_builddir)/src/Makefile.global

# 添加 C++ 共享库路径
MY_CPP_LIB_PATH = /home/wang/Desktop/CUBIT/postgres-17/src/cubit_query/my_cpp_lib.so


OBJS = \
	backend_startup.o \
	cmdtag.o \
	dest.o \
	fastpath.o \
	postgres.o \
	pquery.o \
	utility.o \

# 确保在链接时包含 dl 库和 C++ 共享库
LIBS += -ldl $(MY_CPP_LIB_PATH)

include $(top_srcdir)/src/backend/common.mk
