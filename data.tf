# data "aws_elasticsearch_domain" "domainname" {
#   domain_name = aws_elasticsearch_domain.verizonelasticsearch.domain_name
# }

data "aws_region" "current" {
}

data "aws_caller_identity" "current" {
}