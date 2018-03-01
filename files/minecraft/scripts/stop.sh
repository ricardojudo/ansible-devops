#!/bin/sh
SERVICE_NAME="Minecraft Server"
SERVICE_HOME=/opt/minecraft
PATH_TO_JAR=${SERVICE_HOME}/spigot-1.12.2.jar
PID_PATH_NAME=${SERVICE_HOME}/tmp/PID

sleep 3
if [ -f $PID_PATH_NAME ]; then
  PID=$(cat $PID_PATH_NAME);
  echo "$SERVICE_NAME $PID stoping ..."
  kill $PID;
  echo "$SERVICE_NAME stopped ..."
  rm $PID_PATH_NAME
else
  echo "$SERVICE_NAME is not running ..."
fi