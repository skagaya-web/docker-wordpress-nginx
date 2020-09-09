#!/bin/bash
sudo chown -R vagrant:vagrant ./
rm -rf nginx/log
rm -rf mysql
rm -rf wordpress
mkdir -p nginx/log
mkdir -p mysql
mkdir -p wordpress

