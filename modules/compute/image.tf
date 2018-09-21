# https://github.com/terraform-providers/terraform-provider-oci/blob/master/docs/core/images.md

  variable created_compartment_id {}
  variable name_of_image {}
  variable launch_mode {}
  variable source_type {}
  variable bucket_name {}
  variable namespace_name {}
  variable object_name {}

resource "oci_core_image" "test_image" {
  #Required
  compartment_id = "${var.created_compartment_id}"

  #Optional
  display_name = "${var.name_of_image}"
  launch_mode = "${var.launch_mode}"
  
  image_source_details {
    source_type = "${var.source_type}"
    bucket_name = "${var.bucket_name}"
    namespace_name = "${var.namespace_name}"
    object_name = "${var.object_name}" # exported image name
        
    #Optional
    # source_image_type = "${var.source_image_type}"
  }
}