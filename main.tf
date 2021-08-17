resource "aws_elasticsearch_domain" "verizonelasticsearch" {
  domain_name           = var.my_domain
  elasticsearch_version = var.es_version

  ebs_options {
    ebs_enabled = var.ebs_volume_size > 0 ? true : false
    volume_size = var.ebs_volume_size
    volume_type = var.ebs_volume_type
    iops        = var.ebs_iops
  }

  cluster_config {
    instance_type = var.node_instance_type
  }
  
  advanced_security_options {
      enabled                        = true
     internal_user_database_enabled = true

      master_user_options {
      #    master_user_arn      = (known after apply)
          master_user_name     = "admin"
          master_user_password = "Password1!"
    }
}

    node_to_node_encryption {
        enabled = true
    }

    encrypt_at_rest {
        enabled    = true
    }    


      domain_endpoint_options {
        #  custom_endpoint                 = (known after apply)
        #  custom_endpoint_certificate_arn = (known after apply)
        #  custom_endpoint_enabled         = (known after apply)
          enforce_https                   = true
          tls_security_policy             = "Policy-Min-TLS-1-2-2019-07"
        }
  snapshot_options {
    automated_snapshot_start_hour = 23
  }

  tags = {
    Domain = "TestDomain"
  }
}