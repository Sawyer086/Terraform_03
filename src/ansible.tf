resource "local_file" "ansible_inventory" {
  content = templatefile("${path.module}/ansible_inventory.tpl", {
    webservers = [
      { name = "web-1", public_ip = module.web-1.public_ip, fqdn = module.web-1.fqdn },
      { name = "web-2", public_ip = module.web-2.public_ip, fqdn = module.web-2.fqdn }
    ]
    databases = [
      { name = "main", public_ip = module.db-main.public_ip, fqdn = module.db-main.fqdn },
      { name = "replica", public_ip = module.db-replica.public_ip, fqdn = module.db-replica.fqdn }
    ]
    storage = [
      { name = "storage", public_ip = module.storage.public_ip, fqdn = module.storage.fqdn }
    ]
  })
  filename = "${path.module}/inventory.ini"
}
