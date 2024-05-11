locals {
  compartment_id = "<ocid of the compartment where you want to create your buckets>"
  namespace      = "<Your namespace>"
}

resource "oci_objectstorage_bucket" "bucket1" {
  compartment_id = local.compartment_id
  namespace      = local.namespace
  name           = "tf-example-bucket"
  access_type    = "NoPublicAccess"
  auto_tiering = "Disabled"
}

resource "oci_objectstorage_bucket" "bucket_with_versioning" {
  compartment_id = local.compartment_id
  namespace      = local.namespace
  name           = "bucket-with-versioning"
  access_type    = "NoPublicAccess"
  versioning     = "Enabled"
}
