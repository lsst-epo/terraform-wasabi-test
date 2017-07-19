terraform-wasabi-test
=====================

[![Build Status](https://travis-ci.org/lsst-epo/terraform-wasabi-test.svg?branch=master)](https://travis-ci.org/lsst-sqre/terraform-wasabi-test)

Use [Terraform](https://www.terraform.io/) to configure infrastructure to test [Wasabi](https://wasabi.com), an S3 compatible service.

This terraform deployment creates an Ubuntu 16.04 instance in LSST's Nebula project.

Use
---

   terraform apply

Variables
---------

`count` *(default 1)* Create count many test-wasabi instances for that cloud provider.

License
-------

See the [LICENSE file](https://github.com/lsst-epo/terraform-wasabi-test/blob/master/LICENSE).
