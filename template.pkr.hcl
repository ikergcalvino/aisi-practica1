source "vagrant" "aisi" {
  communicator = "ssh"
  source_path  = "idc-aisi2223/focal64"
  box_version  = "20230202.0.0"
  provider     = "virtualbox"
  add_force    = true
  skip_add     = true
  template     = "provisioning/Vagrantfile.template"
}

build {
  sources = ["source.vagrant.aisi"]

  provisioner "shell" {
    script  = "provisioning/install-docker-ubuntu.sh"
    timeout = "10s"
  }
}
