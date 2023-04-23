    
    **************
    Routing Policy
    **************
        Route 53 routing policy determines how AWS would respond to the DNS queries and provides multiple routing
        policy options.
        *********************
        Simple Routing Policy
        *********************
            - Can have multiple IP addresses to route to.
            - Simple routing does not allow the creation of multiple records with the same name and type,
              but multiple values can be
            - Simple routing policy does not support health checks, so the record would be returned to the 
              client even if it is unhealthy.
            - With Alias record enabled, only one AWS resource or one record can be specified in the current 
              hosted zone.
        ***********************
        Weighted Routing Policy
        ***********************
            - Routes traffic to different resources in specified proportions (weights) e.g.75% to one server 
            and 25% to the other during a pilot release
            - Can be applied when there are multiple resources that perform the same function e.g.webservers 
            serving the same site
            - Weighted routing policy supports health checks.
        ****************************
        Latency-based Routing Policy
        ****************************
            - Respond to the DNS query based on which data center gives the user the lowest network latency.
            - Can be used when there are multiple resources performing the same function
            - Latency between hosts on the Internet can change over time as a result of changes in network 
            connectivity and routing. 
            - Cannot guarantee users from the same geographic will be served from the same location for any 
            compliance reason
            - Can be created using any record type that Route 53 supports except NS or SOA.
            - Latency-based routing policy supports health checks.
        ***********************
        Failover Routing Policy
        ***********************
            - Allows active-passive failover configuration, in which one resource (primary) takes all traffic 
            when its healthy and the other resource (secondary) takes all traffic when the first isnt healthy.
            - Route 53 health checking agents will monitor each location/endpoint of the application to 
            determine its availability.
            - Failover routing policy is applicable for Public hosted zones only.
        **************************
        Geolocation Routing Policy
        **************************
            - Respond to DNS queries based on the geographic location of the users i.e. location from which the 
            DNS queries originate.
            - localization of content and presenting some or all of the website in the users language restrict 
            distribution of content to only the locations in which you have distribution rights.
            - Allows geographic locations to be specified by continent, country, or by state
            - Can be associated with health checks 
        ***************************
        Geoproximity Routing Policy
        ***************************
            - To change the size of the geographic region, specify bias values:
                To expand (1 to 99) more traffic to the resource
                To expand (-1 to -99) less traffic to the resource
            - Helps when shifting traffic from one region to another
            - Routes traffic to the resources based on the geographic location of the users and the resources.
            - Can be configured with a bias to optionally choose to route more traffic or less to a given 
              resource.
        *************************
        Multivalue Routing Policy
        *************************
            - Routing traffic to multiple resources
            - Returns multiple values, e.g. IP addresses for the web servers, in response to DNS queries.
            - Check the health of each resource, so only the values for healthy resources are returned.
            - To route traffic approximately randomly to multiple resources, such as web servers, one multivalue 
              answer record can be created for each resource.