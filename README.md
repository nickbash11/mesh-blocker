# mesh-blocker
Trick for 802.11s

This package implements the function of MAC-whitelisting for IEEE 802.11s, according that <a href="https://github.com/freifunk-gluon/packages/pull/118">post</a>, as far as I understood, it is planned to implement in hostapd.

Hotplug script based on 
<a href="https://git.c3pb.de/freifunk-pb/ffho-packages/-/blob/34633a5aeb8cfa4dec09c8615395962a34c0694d/ffho/ffho-wifi-mesh-macfilter/files/etc/hotplug.d/iface/80-wifi-mesh-macfilter">Freifunk</a> practices extracts a maclist from the file <i>/etc/config/wireless</i>, then daemon compares it with associated stations and blocks all unknowns. It checks for changes every 5 seconds. Option <b>mesh_auto_open_plinks</b> must be set in 1
