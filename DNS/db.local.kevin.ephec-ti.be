$TTL    604800

$ORIGIN kevin-ephecti.be.
@      IN      SOA     ns1.kevin-ephecti.be. root.kevin-ephecti.be. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL 
                       
@	IN      NS      ns1.kevin-ephecti.be.
ns1	IN	A	152.228.134.196

; serveur web

www	IN      A       152.228.134.196
b2b	IN	A	152.228.134.196
intranet	IN	A	152.228.134.196 

;serveur mail

mail	IN 	A	152.228.134.196
smtp	IN	CNAME	mail
pop3	IN	CNAME	mail
imap	IN	CNAME	mail  
mail._domainkey IN      TXT     ( "v=DKIM1; h=sha256; k=rsa; "
	"p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv71tlTrxA5BCDEag8wodRwADf63Q+Pq72fp8wX1i1ovTv7nEVltZlTSe2JfEzyrz/djEgFVQIjSvPQ4ret60S8fG8hblow1qkEdA33OYQmON1VqQJ8zEfo1rGFh3xlTUhFBlxK/aEO4lkNpN89vwAnKPWyMUdU/BLL2/c32Xkp/20fTOuxeUEy84gxymUEb1mFjNoVw0dvxa2D"
	"/IeykuNPq4lmrbZ93Dt27rfnn0GBefSoyZQnhc22ewyrR7+aN8CJgMvAM19ahNko0SxcODZKNLnhy7btPfdCzmxxVADE1zAz/EZMoRQ3Pkv5T1A8moMuaS4xXER77GSoQkqFolHwIDAQAB" )  ; ----- DKIM key mail for kevin-ephecti.be



; serveur VOIP

_sip._udp	SRV     0       0       5060        sip 
_sip._tcp	SRV     0       0       5060        sip
sip			IN      A      	152.228.134.196