package main

import (
    "log"
    "time"
    
    "github.com/DaleWYZ/jx-deploy-test-1221/pkg/timelogger"
)

func main() {
    logger := timelogger.NewTimeLogger()
    logger.Start()
    
    // 保持程序运行
    select {}
} 