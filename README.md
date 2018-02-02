Weechat + Tor
=============

Use tor proxy:
```
/proxy add tor socks5 localhost 9050
/set irc.server.<yourserver>.proxy tor
```

**Build**
```
docker build . -t weechat
```

**Start attached**
```
docker run -it --name weechat --volume /<somepath>:/weechat-data weechat
```

**Start detached**
```
docker run -idt --name weechat --restart=always --volume /<somepath>:/weechat-data weechat
```

Attach with ```docker attach weechat```

Detach again with *ctrl+p* *ctrl+q*
