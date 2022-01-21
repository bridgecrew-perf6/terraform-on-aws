output "config" {
  value = {
    bucket         = aws_s3_bucket.s3_bucket.bucket
    dynamodb_table = aws_dynamodb_table.dynamodb_table.name
  }
}

output "tags" {
  value = local.tags
}

output "gateway" {
  value = {
    dns_record = aws_route53_record.gateway.fqdn
    public_ip  = aws_instance.ec2-gateway.public_ip
  }
}
