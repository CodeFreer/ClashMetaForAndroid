module cfa

go 1.18

require (
	github.com/Dreamacro/clash v1.7.1
	github.com/Kr328/tun2socket v0.0.0-20220414050025-d07c78d06d34
	github.com/dlclark/regexp2 v1.7.0
	github.com/miekg/dns v1.1.50
	github.com/oschwald/geoip2-golang v1.8.0
	golang.org/x/sync v0.1.0
	gopkg.in/yaml.v2 v2.4.0
)

replace github.com/Dreamacro/clash => ../../foss/golang/clash

require github.com/sagernet/sing v0.1.7-0.20230207063819-27d2950cdbe9

require (
	github.com/aead/chacha20 v0.0.0-20180709150244-8b13a72661da // indirect
	github.com/andybalholm/brotli v1.0.4 // indirect
	github.com/cilium/ebpf v0.9.3 // indirect
	github.com/coreos/go-iptables v0.6.0 // indirect
	github.com/fsnotify/fsnotify v1.6.0 // indirect
	github.com/go-task/slim-sprig v0.0.0-20210107165309-348f09dbbbc0 // indirect
	github.com/gofrs/uuid v4.3.1+incompatible // indirect
	github.com/golang/mock v1.6.0 // indirect
	github.com/google/btree v1.0.1 // indirect
	github.com/google/go-cmp v0.5.9 // indirect
	github.com/google/gopacket v1.1.19 // indirect
	github.com/google/pprof v0.0.0-20210407192527-94a9f03dee38 // indirect
	github.com/gorilla/websocket v1.5.0 // indirect
	github.com/insomniacslk/dhcp v0.0.0-20221215072855-de60144f33f8 // indirect
	github.com/josharian/native v1.1.0 // indirect
	github.com/jpillora/backoff v1.0.0 // indirect
	github.com/klauspost/compress v1.15.12 // indirect
	github.com/klauspost/cpuid/v2 v2.0.12 // indirect
	github.com/lunixbochs/struc v0.0.0-20200707160740-784aaebc1d40 // indirect
	github.com/mdlayher/netlink v1.7.2-0.20221213171556-9881fafed8c7 // indirect
	github.com/mdlayher/socket v0.4.0 // indirect
	github.com/metacubex/gvisor v0.0.0-20230213124051-7a16c835d80e // indirect
	github.com/metacubex/quic-go v0.32.0 // indirect
	github.com/metacubex/sing-shadowsocks v0.1.1-0.20230202072246-e2bef5f088c7 // indirect
	github.com/metacubex/sing-tun v0.1.1-0.20230213124625-28d27a0c236b // indirect
	github.com/metacubex/sing-wireguard v0.0.0-20230213124601-d04406a109b4 // indirect
	github.com/mroth/weightedrand/v2 v2.0.0 // indirect
	github.com/onsi/ginkgo/v2 v2.2.0 // indirect
	github.com/oschwald/maxminddb-golang v1.10.0 // indirect
	github.com/quic-go/qpack v0.4.0 // indirect
	github.com/quic-go/qtls-go1-18 v0.2.0 // indirect
	github.com/quic-go/qtls-go1-19 v0.2.0 // indirect
	github.com/quic-go/qtls-go1-20 v0.1.0 // indirect
	github.com/refraction-networking/utls v1.2.0 // indirect
	github.com/sagernet/abx-go v0.0.0-20220819185957-dba1257d738e // indirect
	github.com/sagernet/go-tun2socks v1.16.12-0.20220818015926-16cb67876a61 // indirect
	github.com/sagernet/netlink v0.0.0-20220905062125-8043b4a9aa97 // indirect
	github.com/sagernet/sing-vmess v0.1.1 // indirect
	github.com/sagernet/tfo-go v0.0.0-20230207095944-549363a7327d // indirect
	github.com/sagernet/wireguard-go v0.0.0-20221116151939-c99467f53f2c // indirect
	github.com/samber/lo v1.37.0 // indirect
	github.com/sirupsen/logrus v1.9.0 // indirect
	github.com/u-root/uio v0.0.0-20221213070652-c3537552635f // indirect
	github.com/vishvananda/netns v0.0.0-20211101163701-50045581ed74 // indirect
	github.com/xtls/go v0.0.0-20220914232946-0441cf4cf837 // indirect
	go.etcd.io/bbolt v1.3.6 // indirect
	go.uber.org/atomic v1.10.0 // indirect
	golang.org/x/crypto v0.5.0 // indirect
	golang.org/x/exp v0.0.0-20221205204356-47842c84f3db // indirect
	golang.org/x/mod v0.6.0 // indirect
	golang.org/x/net v0.5.0 // indirect
	golang.org/x/sys v0.4.0 // indirect
	golang.org/x/text v0.6.0 // indirect
	golang.org/x/time v0.0.0-20191024005414-555d28b269f0 // indirect
	golang.org/x/tools v0.2.0 // indirect
	google.golang.org/protobuf v1.28.1 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	lukechampine.com/blake3 v1.1.7 // indirect
)

replace gvisor.dev/gvisor v0.0.0-20230128000341-b7014294633b => github.com/metacubex/gvisor v0.0.0-20230202073621-9b7164de61df

replace go.uber.org/atomic v1.10.0 => github.com/metacubex/uber-atomic v0.0.0-20230202125923-feb10b770370
