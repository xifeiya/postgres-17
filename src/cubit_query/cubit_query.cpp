
#include "postgres.h"
#include "fmgr.h"
#include "utils/elog.h" // 包含 errmsg 的定义
#include <fstream>
#include <iostream>

extern "C" {
    PG_MODULE_MAGIC;

    // 声明 PostgreSQL 函数
    PG_FUNCTION_INFO_V1(extention_api);
}

void table_config()
{
    try {
        std::ofstream file("output.txt");
        if (!file.is_open()) {
            ereport(ERROR,
                    (errcode(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
                     errmsg("Could not open output.txt")));
        }

        file << "hello from cpp" << std::endl;
        file.close();
    } catch (const std::exception &e) {
        ereport(ERROR,
                (errcode(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
                 errmsg("Exception: %s", e.what())));
    }

}

// 使用 extern "C" 修饰导出的函数
extern "C" Datum
extention_api(PG_FUNCTION_ARGS)
{
    // 调用 C++ 函数
    table_config();
    // 返回一个整数
    PG_RETURN_INT32(0);
}


