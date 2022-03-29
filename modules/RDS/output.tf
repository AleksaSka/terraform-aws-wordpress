output "username" {
  value = aws_rds_cluster.rds_claster.master_username
}

output "userpassword" {
    value = aws_rds_cluster.rds_claster.master_password
    sensitive = true
}

output "dbname" {
  value = aws_rds_cluster.rds_claster.database_name
}

output "cluster_endpoint" {
  value = aws_rds_cluster.rds_claster.endpoint
}

output "depends_on" {
  value = aws_rds_cluster_instance.wordpress_instanse[*].id
}

output "writer_53" {
  value = aws_route53_record.writer.name
}

output "readers_53" {
  value = aws_route53_record.readers.*.name
}