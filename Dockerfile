FROM registry.fedoraproject.org/fedora:28

ENV LANG C.UTF-8

RUN dnf -y update

RUN dnf -y install \
                  openldap-servers \
		  openldap-clients

EXPOSE 389 636

ENTRYPOINT ["/usr/sbin/slapd", "-d", "32768", "-u", "ldap", "-h", "ldap:/// ldaps:/// ldapi:///"]

# Local Variables:
# indent-tabs-mode: nil
# End:
