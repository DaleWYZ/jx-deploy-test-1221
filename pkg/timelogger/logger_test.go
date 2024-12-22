package timelogger

import (
	"testing"
)

func TestNewTimeLogger(t *testing.T) {
	logger := NewTimeLogger()
	if logger == nil {
		t.Error("Expected NewTimeLogger to return a non-nil logger")
	}
} 