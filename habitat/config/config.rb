cache_path "$pkg_svc_data_path/cache"
node_path "$pkg_svc_data_path/nodes"
ssl_verify_mode :verify_none
chef_zero.enabled true

interval = 1800
splay = 180
log_level = "warn"
env_path_prefix = "/sbin:/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin"

