#!/bin/sh

DEBUG_PORT=15005

export APP_NAME="/code/spring-web.jar"
export JAVA_OPTS="-Xms756m -Xmx756m -Xss128m -Xmn512m -XX:-HeapDumpOnOutOfMemoryError java.awt.headless=true "
export DEBUG_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=${DEBUG_PORT}"

JAVA_RUN_COMMAND="java -jar ${APP_NAME} ${JAVA_OPTS} ${DEBUG_OPTS}"

$JAVA_RUN_COMMAND