//go:build !premium

package tun

import (
	"github.com/sagernet/sing/common/metadata"
	"net"
	"strconv"

	C "github.com/Dreamacro/clash/constant"
)

func createMetadata(lAddr, rAddr *net.TCPAddr) *C.Metadata {
	return &C.Metadata{
		NetWork:    C.TCP,
		Type:       C.SOCKS5,
		SrcIP:      metadata.SocksaddrFromNet(lAddr).Addr,
		DstIP:      metadata.SocksaddrFromNet(rAddr).Addr,
		SrcPort:    strconv.Itoa(lAddr.Port),
		DstPort:    strconv.Itoa(rAddr.Port),
		AddrType:   C.AtypIPv4,
		Host:       "",
		RawSrcAddr: lAddr,
		RawDstAddr: rAddr,
	}
}
