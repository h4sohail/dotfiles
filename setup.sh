if [ "$SPIN" ]; then
  cat > ~/.bash_aliases  <<- "EOF"
  alias STOP_PROC='systemctl stop proc-shopify--shopify@server.service && systemctl stop proc-shopify--shopify@worker.service'
  alias START_PROC='systemctl start proc-shopify--shopify@server.service && systemctl start proc-shopify--shopify@worker.service'
  alias start=/usr/bin/start
  alias stop=/usr/bin/stop
  alias attach=/usr/bin/attach
  EOF
  source ~/.bash_aliases 
fi
