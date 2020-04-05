project ('shairport', 'c',
  version : '0.1',
  meson_version : '>= 0.35.0')


cc = meson.get_compiler('c')

ao_dep = dependency('ao', required : false)
ssl_dep = dependency('openssl')
libm_dep = cc.find_library('m')
thread_dep = dependency('threads')
alsa_dep = dependency('alsa', required : false)
pulse_dep = dependency('libpulse-simple', required : false)
avahi_dep = dependency('avahi-client', required : false)
subdir('src')
