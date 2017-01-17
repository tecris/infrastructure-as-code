 Private registry

Registry blue.sky is configured as a local private registry(TLS).

https://github.com/docker/distribution/blob/v2.2.1/docs/deploying.md#running-a-domain-registry
https://github.com/docker/distribution/blob/v2.2.1/docs/insecure.md

Deploy certificates
-) $ ./deployBlueskyCertificates.sh                   # deploy certificates

Browse registry:
  .) https://blue.sky/v2/_catalog               # show images
  .) https://blue.sky/v2/bookstore/tags/list    # show tags for a given image


How to create new self-signed certificates
     $ mkdir -p certs && openssl req \
       -newkey rsa:4096 -nodes -sha256 -keyout certs/domain.key \
       -x509 -days 365 -out certs/domain.crt

  FQDN: blue.sky

How to check for what dates is the certificate valid
 $ cat domain.crt | openssl x509 -noout -issuer -subject -dates
