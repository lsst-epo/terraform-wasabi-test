# Add test-wasabi.lsst.rocks to test-wasabi-0.lsst.rocks
resource "aws_route53_record" "test_wasabi_route53" {
  zone_id = "Z24VEHCIEZIICC"
  name = "test-wasabi.lsst.rocks"
  type = "A"
  ttl = "300"
  records = ["${openstack_compute_instance_v2.test_wasabi_instances.0.access_ip_v4}"]
}

# Add test-wasabi-#.lsst.rocks
resource "aws_route53_record" "test_wasabi_numbered_route53" {
  count = "${var.count}"
  zone_id = "Z24VEHCIEZIICC"
  name = "test-wasabi-${count.index}.lsst.rocks"
  type = "A"
  ttl = "300"
  records = ["${element(openstack_compute_instance_v2.test_wasabi_instances.*.access_ip_v4, count.index)}"]
}

# Add test-wasabi-site.lsst.rocks to test-wasabi-site-0.lsst.rocks
resource "aws_route53_record" "test_wasabi_site_route53" {
  zone_id = "Z24VEHCIEZIICC"
  name = "test-wasabi-site.lsst.codes"
  type = "A"
  ttl = "300"
  records = ["${openstack_compute_instance_v2.test_wasabi_instances.0.network.0.fixed_ip_v4}"]
}

# Add test-wasabi-site-#.lsst.rocks
resource "aws_route53_record" "test_wasabi_site_numbered_route53" {
  count = "${var.count}"
  zone_id = "Z24VEHCIEZIICC"
  name = "test-wasabi-site-${count.index}.lsst.rocks"
  type = "A"
  ttl = "300"
  records = ["${element(openstack_compute_instance_v2.test_wasabi_instances.*.network.0.fixed_ip_v4, count.index)}"]
}

# # Add test-wasabi.lsst.rocks to test-wasabi-0.lsst.rocks
# resource "aws_route53_record" "test_wasabi_aws_route53" {
#   zone_id = "Z24VEHCIEZIICC"
#   name = "test-wasabi-aws.lsst.rocks"
#   type = "A"
#   ttl = "300"
#   records = ["${aws_instance.test_wasabi_aws_shovel.public_ip}"]
# }