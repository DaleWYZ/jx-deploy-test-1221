package timelogger

import (
    "log"
    "time"
)

type TimeLogger struct {
    interval time.Duration
}

func NewTimeLogger() *TimeLogger {
    return &TimeLogger{
        interval: 5 * time.Second, // 每5秒输出一次
    }
}

func (t *TimeLogger) Start() {
    go func() {
        for {
            log.Printf("当前时间: %s", time.Now().Format("2006-01-02 15:04:05"))
            time.Sleep(t.interval)
        }
    }()
} 