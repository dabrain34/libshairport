shairport_lib_srcs = ['shairport.c', 'alac.c', 'hairtunes.c', 'socketlib.c']

inc_dirs =  include_directories('.')


libshairport_lib = shared_library('libshairport',
              shairport_lib_srcs,
              version: '1.0',
              dependencies: [libm_dep,ao_dep, ssl_dep, thread_dep],
              include_directories : inc_dirs,
              install:true)

libshairport_dep = declare_dependency(link_with : libshairport_lib,
  include_directories : inc_dirs)

h = install_headers ('shairport.h')

