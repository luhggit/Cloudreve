#!/bin/bash

export VERSION=$(git describe --tags)
export COMMIT_SHA=$(git rev-parse --short HEAD)

go build -a -o cloudreve -ldflags " -X 'github.com/HFO4/cloudreve/pkg/conf.BackendVersion=$VERSION' -X 'github.com/HFO4/cloudreve/pkg/conf.LastCommit=$COMMIT_SHA'"
