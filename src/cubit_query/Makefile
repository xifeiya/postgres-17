MODULES = cubit_query
EXTENSION = cubit_query
DATA = cubit_query--1.0.sql

PG_CONFIG = /usr/local/pgsql/bin/pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

# 使用 C++ 编译器
CC = g++
CXXFLAGS = -std=c++17
