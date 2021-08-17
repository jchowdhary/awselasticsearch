output "endpoint" {
  description = "Domain-specific endpoint used to submit index, search, and data upload requests."
  value       = aws_elasticsearch_domain.verizonelasticsearch.endpoint
}

output "kibana_endpoint" {
  description = "Domain-specific endpoint for kibana without https scheme."
  value       = aws_elasticsearch_domain.verizonelasticsearch.kibana_endpoint
}

output "domain_id" {
  description = "Unique identifier for the domain."
  value       = aws_elasticsearch_domain.verizonelasticsearch.domain_id
}

output "domain_name" {
  description = "The name of the Elasticsearch domain."
  value       = aws_elasticsearch_domain.verizonelasticsearch.domain_name
}