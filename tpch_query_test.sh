#!/bin/bash

# 定义数据库信息
DB_USER="postgres"
DB_NAME="test"

# 定义要执行的脚本目录
SCRIPT_DIR="/home/wang/桌面/pg_duckdb/third_party/duckdb/extension/tpch/dbgen/queries/q01.sql"

# 循环执行目录中的每个 SQL 脚本
for i in 1 2 3 4 5 6 
do
    # 输出开始时间
  

    start_time=$(($(date +%s%N) / 1000000))
  

    # 执行脚本
    /usr/local/pgsql-17/bin/psql -U "$DB_USER" -d "$DB_NAME" -f "$SCRIPT_DIR" 
    if [ $? -ne 0 ]
    then
        echo "脚本 $script 执行失败，退出循环"
        break
    fi

    # 计算执行时间
    end_time=$(($(date +%s%N) / 1000000))
    DURATION=$((end_time - start_time))
    echo "执行耗时: ${DURATION}ms"
    echo "============================="
done

echo "所有脚本执行完成！"
