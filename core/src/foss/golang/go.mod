module foss

go 1.19

require cfa v0.0.0

require (
	github.com/Dreamacro/clash v1.7.1 // indirect
	github.com/Kr328/tun2socket v0.0.0-20220414050025-d07c78d06d34 // indirect
	github.com/cheekybits/genny v1.0.0 // indirect
	github.com/fsnotify/fsnotify v1.5.4 // indirect
	github.com/go-task/slim-sprig v0.0.0-20210107165309-348f09dbbbc0 // indirect
	github.com/klauspost/cpuid/v2 v2.1.1 // indirect
	github.com/kr/pretty v0.3.0 // indirect
	github.com/marten-seemann/qpack v0.3.0 // indirect
	github.com/marten-seemann/qtls-go1-16 v0.1.5 // indirect
	github.com/marten-seemann/qtls-go1-17 v0.1.2 // indirect
	github.com/marten-seemann/qtls-go1-18 v0.1.3 // indirect
	github.com/marten-seemann/qtls-go1-19 v0.1.1 // indirect
	github.com/nxadm/tail v1.4.8 // indirect
	github.com/onsi/ginkgo v1.16.5 // indirect
	github.com/oschwald/maxminddb-golang v1.10.0 // indirect
	github.com/u-root/uio v0.0.0-20220204230159-dac05f7d2cb4 // indirect
	golang.org/x/mod v0.6.0-dev.0.20220419223038-86c51ed26bb4 // indirect
	golang.org/x/text v0.4.0 // indirect
	golang.org/x/tools v0.1.12 // indirect
	gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	lukechampine.com/blake3 v1.1.7 // indirect
)

require (
	cfa/blob v0.0.0 // indirect
	github.com/coreos/go-iptables v0.6.0 // indirect
	github.com/dlclark/regexp2 v1.7.0 // indirect
	github.com/gofrs/uuid v4.3.0+incompatible // indirect
	github.com/google/btree v1.1.2 // indirect
	github.com/google/gopacket v1.1.19 // indirect
	github.com/gorilla/websocket v1.5.0 // indirect
	github.com/insomniacslk/dhcp v0.0.0-20221001123530-5308ebe5334c // indirect
	github.com/lucas-clemente/quic-go v0.29.1 // indirect
	github.com/lunixbochs/struc v0.0.0-20200707160740-784aaebc1d40 // indirect
	github.com/metacubex/sing-wireguard v0.0.0-20221109114053-16c22adda03c // indirect
	github.com/miekg/dns v1.1.50 // indirect
	github.com/oschwald/geoip2-golang v1.8.0 // indirect
	github.com/sagernet/sing v0.0.0-20221008120626-60a9910eefe4 // indirect
	github.com/sagernet/sing-shadowsocks v0.0.0-20220819002358-7461bb09a8f6 // indirect
	github.com/sagernet/sing-vmess v0.0.0-20221109021549-b446d5bdddf0 // indirect
	github.com/sagernet/wireguard-go v0.0.0-20221108054404-7c2acadba17c // indirect
	github.com/sirupsen/logrus v1.9.0 // indirect
	github.com/xtls/go v0.0.0-20220914232946-0441cf4cf837 // indirect
	go.etcd.io/bbolt v1.3.6 // indirect
	go.uber.org/atomic v1.10.0 // indirect
	golang.org/x/crypto v0.1.0 // indirect
	golang.org/x/exp v0.0.0-20220930202632-ec3f01382ef9 // indirect
	golang.org/x/net v0.1.0 // indirect
	golang.org/x/sync v0.0.0-20220929204114-8fcdb60fdcc0 // indirect
	golang.org/x/sys v0.1.0 // indirect
	golang.org/x/time v0.0.0-20220922220347-f3bd1da661af // indirect
	google.golang.org/protobuf v1.28.1 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	gvisor.dev/gvisor v0.0.0-20220901235040-6ca97ef2ce1c // indirect
)

replace github.com/vishvananda/netlink => github.com/MetaCubeX/netlink v1.2.0-beta.0.20220529072258-d6853f887820

replace github.com/lucas-clemente/quic-go => github.com/tobyxdd/quic-go v0.28.1-0.20220706211558-7780039ad599

replace cfa => ../../main/golang

replace github.com/Dreamacro/clash => ./clash

replace cfa/blob => ../../../build/intermediates/golang_blob
