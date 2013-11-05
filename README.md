Custom Ruby webserver!
======================

This is a repo of foundational Ruby code to actually create your own webserver for your computer, capable of rendering html files within the webserver's directory. The server.rb file is actually the basic in-class example we went over on November 5th at Code Fellows, which offers up a serious security bug with anybody using something like the 'curl' tool, to which they could actually access any file on the host system if they knew what they were doing.

Server2.rb however is the more fully fleshed-out version of a server with the same type of ideas, but its security is a bit tighter. Not only that, but it also routes around using customized methods, including an actual 404 redirect that taunts the user! Hooray!

Also, be sure to try out the cat_pictures directory! ^._.^

(The port server2.rb deploys to is localhost:2345)
