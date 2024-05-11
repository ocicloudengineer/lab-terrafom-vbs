provider "oci" {
  tenancy_ocid = "<ocid1 of your ROOT compartment>"
  user_ocid = "<ocid1 for the user that owns the private key>"
  private_key_path = "/home/builder/.ssh/id_rsa"
  fingerprint = "<fingerprint of your private key>"
  region = "<your region.  For example: us-ashburn-1>"
}
