```
	  ___       __         ______________        _____ 
	  __ |     / /___________  ____/__  /_______ __  /_
	  __ | /| / /_  _ \  _ \  /    __  __ \  __ `/  __/
	  __ |/ |/ / /  __/  __/ /___  _  / / / /_/ // /_  
	  ____/|__/  \___/\___/\____/  /_/ /_/\__,_/ \__/  
```

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
Useful when running in relay mode
```
docker run -idt --name weechat --restart=always --volume /<somepath>:/weechat-data -p 8000:8000 -p 8001:8001 weechat
```

Attach with ```docker attach weechat```

Detach again with *ctrl+p* *ctrl+q*
