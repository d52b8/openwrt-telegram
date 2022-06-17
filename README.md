### Install

``` bash
wget https://raw.githubusercontent.com/d52b8/openwrt-telegram/master/telegram.sh
chmod +x ./telegram.sh
ln -s $(pwd)/telegram.sh /usr/bin/telegram
telegram
vim ./.telegram.env #set $BOT_API_KEY and $CHAT_ID 
```


### Use

``` bash
telegram "Message"
```

`\n` linefeed

``` bash
telegram "Message\nNew line message"
```