shairport_srcs = ['main.c']

if get_option('systemd')
  systemd = dependency('systemd', required: false)
  prefix = get_option('prefix')
  systemd_dep = dependency('libsystemd', required: false)
  systemd_system_services_dir = systemd.get_pkgconfig_variable('systemdsystemunitdir', define_variable : [ 'prefix', prefix])
  shairport_bindir = join_paths(prefix, get_option('bindir'))
  shairport_libdir = join_paths(prefix, get_option('libdir'))
  systemd_config = configuration_data()
  systemd_config.set('SH_BINARY', join_paths(shairport_bindir, 'shairport'))
  systemd_config.set('SH_LIBRARY', shairport_libdir)
  # Get user name from host machine
  python3 = import('python').find_installation()
  systemd_config.set('SH_HOSTNAME', run_command(python3, '-c', 'import os; print(os.uname()[1])').stdout().strip())

  configure_file(input : 'shairport.service.in',
                 output : 'shairport.service',
                 configuration : systemd_config,
                 install_dir : systemd_system_services_dir)
endif

executable = executable ('shairport',
             shairport_srcs,
             install: true,
             dependencies: [libshairport_dep],
             )

meson.add_install_script('shairport_user_install.sh')
