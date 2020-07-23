* lam
  * https://blog.51cto.com/lzlutao/2367733
* ldap
  * https://www.jianshu.com/p/b4afb9ccab43
  * https://www.jianshu.com/p/cce418c6a745

# Config
* chown -R 101:101 radiuscfg/
* chown -R 33:33 lamdata/


# Test
* eapol_test -a 127.0.0.1 -c test/peap-mschapv2.conf -s testing123


# Default pwd
* lam master: masterpwd
* lam lam-profile: lampwd
* admin user: adminpwd
* readonly user: readonlypwd
* manager user: manager123
* test user: test123

* iptables -t nat -I  POSTROUTING   -s 172.21.0.0/16 -d 172.31.0.0/16 -j SNAT --to 172.31.127.1


* ldapsearch -Q -LLL -Y EXTERNAL -H ldapi:/// -b cn=config dn
* ldapsearch -x -H ldapi:/// -D cn=admin,dc=sechnic,dc=com -w adminpwd -b ou=users,dc=sechnic,dc=com
* ldapadd -Y EXTERNAL -H ldapi:/// -f xxx.ldif


* A new lam + ldap
  * lamconfig set admin login
  * admin login
  * add new linux group
  * add new samba domain
    * samba SID: S-1-5-21-1050648551-1543052747-425021240
  * add manager user
  * logout
  * lamconfg set users login
  * manager login
  * add new users
