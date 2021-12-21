#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp /*тут ssa ключ*/ \
хз пока не понял

echo 'Restart server...'

ssh -i опять указываем ключ