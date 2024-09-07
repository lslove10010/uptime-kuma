#!/bin/sh

# 设置路径
SCRIPT_PATH="/usr/home/Serv00账号名/domains/域名/public_html/uptime-kuma/start.js"
WORK_DIR="/usr/home/Serv00账号名/domains/域名/public_html/uptime-kuma"
LOG_FILE="$WORK_DIR/uptime-kuma.log"
RESTART_LOG="$WORK_DIR/restart_log.txt"

# 检查脚本是否在运行
if ! pgrep -f "node $SCRIPT_PATH" > /dev/null
then
    # 如果脚本没有运行，则重新启动它
    cd "$WORK_DIR"
    nohup node "$SCRIPT_PATH" > "$LOG_FILE" 2>&1 &
    echo "Restarted Uptime Kuma at $(date)" >> "$RESTART_LOG"
fi
