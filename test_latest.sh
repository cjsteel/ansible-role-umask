# test for templated umask_system_config_file_path and 
export namespace=robertdebock
export tag=latest
export image=centos
molecule test
export image=ubuntu
molecule test
export image=fedora
molecule test
export image=debian
molecule test
