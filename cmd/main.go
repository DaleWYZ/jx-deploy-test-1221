package main

import (
    "log"
    "time"
    
    "your-project/pkg/timelogger"
)

func main() {
    logger := timelogger.NewTimeLogger()
    logger.Start()
    
    // 保持程序运行
    select {}
} 