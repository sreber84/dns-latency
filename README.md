# dns-latency

This Container does provide an option to measure DNS latency better and does expose the following `metric`:

 - `dns_latency_milliseconds`
 - `dns_failure_failure_total`
 
 A potential query rule to validate a problem could be `increase(dns_failure_failure_total[10m])`. If there is a spike in failures, it's definitely worth further investigating.
