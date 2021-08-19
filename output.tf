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

output "kibana_username" {
  description = "The name of the Elasticsearch domain."
  value       = aws_elasticsearch_domain.verizonelasticsearch.advanced_security_options[0].master_user_options[0].master_user_name
}

output "kibana_password" {
  description = "The name of the Elasticsearch domain."
  value       = aws_elasticsearch_domain.verizonelasticsearch.advanced_security_options[0].master_user_options[0].master_user_password
}