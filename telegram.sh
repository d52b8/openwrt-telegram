#!/bin/sh

if [ ! -f ./.telegram.env ]; then
cat > ./.telegram.env <<_EOF_
BOT_API_KEY=BOT_API_KEY
CHAT_ID=CHAT_ID
_EOF_
fi

. ./.telegram.env

LINEFEED_OS=/n
LINEFEED_ENCODED=%0A

HOST=$(uci get uhttpd.defaults.commonname)
INPUT=$1

TEXT=$HOST/n$INPUT
TEXT_LINEFEED_ENCODED=${TEXT//$LINEFEED_OS/$LINEFEED_ENCODED}
URL="https://api.telegram.org/bot${BOT_API_KEY}/sendMessage?chat_id=${CHAT_ID}&text=${TEXT_LINEFEED_ENCODED}"

RESP=$(wget -q -O- "$URL");
