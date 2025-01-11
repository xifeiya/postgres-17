DO $$
BEGIN
    FOR i IN 1..5 LOOP
        \i /home/wang/桌面/pg_duckdb/third_party/duckdb/extension/tpch/dbgen/queries/q6.sql
    END LOOP;
END $$;

SET duckdb.force_execution = false;

EXPLAIN (ANALYZE, BUFFERS)

\i /home/wang/桌面/pg_duckdb/third_party/duckdb/extension/tpch/dbgen/queries/q01.sql

select pg_backend_pid();

SELECT pid, usename, application_name, client_addr, state, query
FROM pg_stat_activity;

ps aux | grep postgres

SET max_parallel_workers_per_gather = 0;

SELECT
    sum(l_extendedprice * l_discount) AS revenue
FROM
    lineitem
WHERE
    l_shipdate >= CAST('1994-01-01' AS date)
    AND l_shipdate < CAST('1995-01-01' AS date)
    AND l_discount BETWEEN 0.05
    AND 0.07
    AND l_quantity < 24;


SELECT * FROM heap_page_items(get_raw_page('region', 0));