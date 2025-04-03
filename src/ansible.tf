resource “local_file” “hosts_cfg” {
content = templatefile(“path.module/hosts.tftpl",webservers=yandex 
compute instance.webserversdatabases=yandex 
compute instance.databasesstorage=yandex 
compute instance.storage)filename="{abspath(path.module)}/hosts.cfg”
}
