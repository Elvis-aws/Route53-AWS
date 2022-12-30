

************
Time To Live
************
    The amount of time, in seconds, that you want a DNS resolver to cache (store) the values for a record before
    submitting another request to Route 53 to get the current values for that record. If the DNS resolver 
    receives another request for the same domain before the TTL expires, the resolver returns the cached value. 
    A longer TTL reduces your Route 53 charges, which are based in part on the number of DNS queries that Route 
    53 responds to. A shorter TTL reduces the amount of time that DNS resolvers route traffic to older resources 
    after you change the values in a record, for example, by changing the IP address for the web server for 
    www.example.com.