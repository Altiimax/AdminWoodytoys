$ORIGIN kevin-ephecti.be.
$TTL	604800
@		IN	SOA	ns.kevin-ephecti.be. admin.kevin-ephecti.be. (
		 2019030901		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL

@	IN      NS      ns1.kevin-ephecti.be.

ns      IN      A       152.228.134.196
ns1      IN      A       152.228.134.196

;serveur mail
mail    IN      A       152.228.134.196
@       IN      NS      ns
        IN      A       152.228.134.196
        IN      MX      1       mail
        IN      TXT     "v=spf1 include:mail.kevin-ephecti.be ip4:152.228.134.196 -all"

;serveur web

web     IN      A       152.228.134.196
www     IN      CNAME   web
b2b     IN      CNAME   web
_imaps._tcp IN  SRV     1 1 993 mail.kevin-ephecti.be.
_submission._tcp IN     SRV 1 1 587 mail.kevin-ephecti.be.