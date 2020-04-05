shairport_lib_srcs = ['alac.c',
						'audio_alsa.c',
						'audio.c',
						'audio_dummy.c',
						'audio_pipe.c',
						'common.c',
						'daemon.c',
						'getopt_long.c',
						'mdns.c',
						'mdns_external.c',
            'mdns_tinysvcmdns.c',
						'metadata.c',
						'player.c',
						'rtp.c',
						'rtsp.c',
						'shairport.c',
						'tinysvcmdns.c']

cdata = configuration_data()

cdata.set('CONFIG_HAVE_GETOPT_H', 1)

if host_machine == 'openbsd'
shairport_lib_srcs += ['audio_sndio.c']
cdata.set('CONFIG_SNDIO', 1)
endif

shairport_deps = [libm_dep, ssl_dep, thread_dep]

if ao_dep.found()
shairport_lib_srcs += ['audio_ao.c']
cdata.set('CONFIG_AO', 1)
shairport_deps += [ao_dep]
endif

if alsa_dep.found()
shairport_lib_srcs += ['audio_alsa.c']
cdata.set('CONFIG_ALSA', 1)
shairport_deps += [alsa_dep]
endif

if pulse_dep.found()
shairport_lib_srcs += ['audio_pulse.c']
cdata.set('CONFIG_PULSE', 1)
shairport_deps += [pulse_dep]
endif

if avahi_dep.found()
shairport_lib_srcs += ['mdns_avahi.c']
cdata.set('CONFIG_AVAHI', 1)
shairport_deps += [avahi_dep]
endif

if cc.has_header('dns_sd.h')
cdata.set(CONFIG_HAVE_DNS_SD_H,1)
shairport_lib_srcs += ['mdns_dns_sd.c']
endif

configure_file(output : 'config.h', configuration : cdata)

inc_dirs =  include_directories('.')

libshairport_lib = shared_library('shairport',
              shairport_lib_srcs,
              version: '1.0',
              dependencies: shairport_deps,
              include_directories : inc_dirs,
              install:true)

libshairport_dep = declare_dependency(link_with : libshairport_lib,
  include_directories : inc_dirs)

h = install_headers ('shairport.h')

