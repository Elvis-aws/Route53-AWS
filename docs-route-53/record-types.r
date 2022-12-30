
************
Record Types 
************

    *************
    A record type
    *************
        You use an A record to route traffic to a resource, such as a web server, using an IPv4 address in dotted 
        decimal notation. e.g <Value>192.0.2.1</Value>
        Maps a host name to an IPV4 address
    ****************
    AAAA record type
    ****************
        Maps a host name to an IPV6 address
    *****************
    CNAME record type
    *****************
        A CNAME record maps DNS queries for the name of the current record, such as acme.example.com, to another 
        domain (example.com or example.net) or subdomain (acme.example.com or zenith.example.org). The DNS 
        protocol does not allow you to create a CNAME record for the top node of a DNS namespace, also known as 
        the zone apex. For example, if you register the DNS name example.com, the zone apex is example.com. 
    **************
    NS record type
    **************
        An NS record identifies the name servers for the hosted zone. Note the following: The most common use 
        for an NS record is to control how internet traffic is routed for a domain. To use the records in a hosted 
        zone to route traffic for a domain, you update the domain registration settings to use the four name 
        servers in the default NS record. (This is the NS record that has the same name as the hosted zone.) 
    *****************
    Alias record type
    *****************
        Amazon Route 53 alias records are mapped internally to the DNS name of alias targets such as AWS resources. 
        Route 53 monitors the IP address associated with an alias targets DNS name for scaling actions and software 
        updates. The authoritative response from Route 53 name servers contains an A record (for IPv4 addresses) or 
        AAAA record (for IPv6 addresses) with the IP address of the alias target. You can not set an alias for an 
        EC2 DNS name. 