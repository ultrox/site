lsattr & chattr 

`lsattr /path/to/file` 
`chattr +i /path/to/file` make it immutable. I needed it because I was editing `/etc/resolve.conf` and network service was chaning it on reboot.

### Remove yarn.lock as if never commited
git filter-branch --index-filter "git rm --cached -f -r --ignore-unmatch yarn.lock" --tag-name-filter cat -- --all
