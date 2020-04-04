project ('shairport', 'c',
  version : '0.1',
  meson_version : '>= 0.35.0')


cc = meson.get_compiler('c')

ao_dep = dependency('ao')
ssl_dep = dependency('openssl')
libm_dep = cc.find_library('m', required : false)
thread_dep = dependency('threads')
subdir('src')
