# awselasticsearch poc
Following actions will be incorporated in Terraform HCL language

1.	Create managed AWS Elasticsearch and kibana services up and running in the US region
2.	Define and Hot and Ultrawarm instances and policies (Hot is EBS and Ultrawarm is in S3) 
3.	Configure ES Domain and required security policies and data encryption
4.	Elasticsearch and Kibana should be accessible from the browser

* NOTE: provider.tf has not been added in github for security reasons.

**19/08/2021 Update**: Commited tf files which created AWS managed ES and kibana running in US region with Ultrawarm defined.
![verizonesdomain_ultrawarm2](https://user-images.githubusercontent.com/12508591/130062092-388782f0-508e-4f0d-8fe1-e51ba950e36b.jpg)
![verizonesdomain_ultrawarm1](https://user-images.githubusercontent.com/12508591/130062102-3a7de2c5-b373-4b91-b972-fee4b61a5056.jpg)

**NOTE: Problem 2 POC is done here https://github.com/jchowdhary/tf-lambda**

Problem 2:
1.	Create a S3 bucket in the US region (bucket1) with retention  as 30 days.
2.	Trigger an S3 event when object (text file) is placed in the S3 (bucket1)
3.	Trigger a lambda function to move the file to another bucket (bucket2) when S3 event is received
4.	Create a glue Job to compress the bucket2's object with gz

