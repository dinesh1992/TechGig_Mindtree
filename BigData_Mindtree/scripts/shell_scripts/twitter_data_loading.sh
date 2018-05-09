#!/bin/sh 
#set the environment

export HIVE_SCRIPT_DIR=/home/training/Dinesh/scripts/hive_scripts/
export HIVE_LOG_FILE=/home/training/Dinesh/output_file/hive_db.log
truncate $HIVE_LOG_FILE --size 0

echo "$(date) [MSG] Script Start Sucessfully " >> $HIVE_LOG_FILE

# Calling Database and table creation Script
echo "$(date) [INFO] Database and Table Creation  ---> START " >> $HIVE_LOG_FILE
hive -f $HIVE_SCRIPT_DIR/database_table_creation.sql 
echo "$(date) [INFO] Database and Table Creation  ---> END   " >> $HIVE_LOG_FILE 

# Calling Data Loading Script
echo "$(date) [INFO] Data Loading in  DB ---> START " >> $HIVE_LOG_FILE
hive -f $HIVE_SCRIPT_DIR/data_loading.sql 
echo "$(date) [INFO] Data Loading in  DB ---> END   " >> $HIVE_LOG_FILE

echo "$(date) [MSG] Script run Sucessfully " >> $HIVE_LOG_FILE




