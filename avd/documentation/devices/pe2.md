# pe2

## Table of Contents

- [Management](#management)
  - [Management Interfaces](#management-interfaces)
  - [DNS Domain](#dns-domain)
  - [IP Name Servers](#ip-name-servers)
  - [NTP](#ntp)
  - [Management API HTTP](#management-api-http)
- [Authentication](#authentication)
  - [Local Users](#local-users)
  - [Enable Password](#enable-password)
  - [AAA Authorization](#aaa-authorization)
- [Management Security](#management-security)
  - [Management Security Summary](#management-security-summary)
  - [Management Security Device Configuration](#management-security-device-configuration)
- [Monitoring](#monitoring)
  - [TerminAttr Daemon](#terminattr-daemon)
- [Spanning Tree](#spanning-tree)
  - [Spanning Tree Summary](#spanning-tree-summary)
  - [Spanning Tree Device Configuration](#spanning-tree-device-configuration)
- [Internal VLAN Allocation Policy](#internal-vlan-allocation-policy)
  - [Internal VLAN Allocation Policy Summary](#internal-vlan-allocation-policy-summary)
  - [Internal VLAN Allocation Policy Device Configuration](#internal-vlan-allocation-policy-device-configuration)
- [Interfaces](#interfaces)
  - [Ethernet Interfaces](#ethernet-interfaces)
  - [Loopback Interfaces](#loopback-interfaces)
- [Routing](#routing)
  - [Service Routing Protocols Model](#service-routing-protocols-model)
  - [Virtual Router MAC Address](#virtual-router-mac-address)
  - [IP Routing](#ip-routing)
  - [IPv6 Routing](#ipv6-routing)
  - [Static Routes](#static-routes)
  - [Router OSPF](#router-ospf)
  - [Router ISIS](#router-isis)
  - [Router BGP](#router-bgp)
- [BFD](#bfd)
  - [Router BFD](#router-bfd)
- [MPLS](#mpls)
  - [MPLS and LDP](#mpls-and-ldp)
  - [MPLS Interfaces](#mpls-interfaces)
  - [MPLS Device Configuration](#mpls-device-configuration)
- [Patch Panel](#patch-panel)
  - [Patch Panel Summary](#patch-panel-summary)
  - [Patch Panel Device Configuration](#patch-panel-device-configuration)
- [Multicast](#multicast)
  - [IP IGMP Snooping](#ip-igmp-snooping)
- [VRF Instances](#vrf-instances)
  - [VRF Instances Summary](#vrf-instances-summary)
  - [VRF Instances Device Configuration](#vrf-instances-device-configuration)
- [EOS CLI Device Configuration](#eos-cli-device-configuration)

## Management

### Management Interfaces

#### Management Interfaces Summary

##### IPv4

| Management Interface | Description | Type | VRF | IP Address | Gateway |
| -------------------- | ----------- | ---- | --- | ---------- | ------- |
| Management1 | OOB_MANAGEMENT | oob | MGMT | 172.16.100.102/24 | 172.16.100.1 |

##### IPv6

| Management Interface | Description | Type | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | ---- | --- | ------------ | ------------ |
| Management1 | OOB_MANAGEMENT | oob | MGMT | - | - |

#### Management Interfaces Device Configuration

```eos
!
interface Management1
   description OOB_MANAGEMENT
   no shutdown
   vrf MGMT
   ip address 172.16.100.102/24
```

### DNS Domain

DNS domain: angacom.lab

#### DNS Domain Device Configuration

```eos
dns domain angacom.lab
!
```

### IP Name Servers

#### IP Name Servers Summary

| Name Server | VRF | Priority |
| ----------- | --- | -------- |
| 8.8.8.8 | MGMT | - |
| 8.8.4.4 | MGMT | - |

#### IP Name Servers Device Configuration

```eos
ip name-server vrf MGMT 8.8.4.4
ip name-server vrf MGMT 8.8.8.8
```

### NTP

#### NTP Summary

##### NTP Local Interface

| Interface | VRF |
| --------- | --- |
| Management1 | MGMT |

##### NTP Servers

| Server | VRF | Preferred | Burst | iBurst | Version | Min Poll | Max Poll | Local-interface | Key |
| ------ | --- | --------- | ----- | ------ | ------- | -------- | -------- | --------------- | --- |
| time.google.com | MGMT | - | - | - | - | - | - | - | - |

#### NTP Device Configuration

```eos
!
ntp local-interface vrf MGMT Management1
ntp server vrf MGMT time.google.com
```

### Management API HTTP

#### Management API HTTP Summary

| HTTP | HTTPS | UNIX-Socket | Default Services |
| ---- | ----- | ----------- | ---------------- |
| False | True | - | - |

#### Management API VRF Access

| VRF Name | IPv4 ACL | IPv6 ACL |
| -------- | -------- | -------- |
| MGMT | - | - |

#### Management API HTTP Device Configuration

```eos
!
management api http-commands
   protocol https
   no shutdown
   !
   vrf MGMT
      no shutdown
```

## Authentication

### Local Users

#### Local Users Summary

| User | Privilege | Role | Disabled | Shell |
| ---- | --------- | ---- | -------- | ----- |
| admin | 15 | network-admin | False | - |
| ansible | 15 | network-admin | False | - |

#### Local Users Device Configuration

```eos
!
username admin privilege 15 role network-admin secret sha512 <removed>
username admin ssh-key ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPh1fn/zh7sMvIo0AMcnQ888HrNU79trbb8Jks8feXoP ubuntu@LHVS0020
username ansible privilege 15 role network-admin secret sha512 <removed>
```

### Enable Password

Enable password has been disabled

### AAA Authorization

#### AAA Authorization Summary

| Type | User Stores |
| ---- | ----------- |
| Exec | local |

Authorization for configuration commands is disabled.

#### AAA Authorization Device Configuration

```eos
aaa authorization exec default local
!
```

## Management Security

### Management Security Summary

| Settings | Value |
| -------- | ----- |
| Common password encryption key | True |

### Management Security Device Configuration

```eos
!
management security
   password encryption-key common
```

## Monitoring

### TerminAttr Daemon

#### TerminAttr Daemon Summary

| CV Compression | CloudVision Servers | VRF | Authentication | Smash Excludes | Ingest Exclude | Bypass AAA |
| -------------- | ------------------- | --- | -------------- | -------------- | -------------- | ---------- |
| gzip | apiserver.arista.io:443 | MGMT | token-secure,/mnt/flash/cv-onboarding-token | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | True |

#### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -cvaddr=apiserver.arista.io:443 -cvauth=token-secure,/mnt/flash/cv-onboarding-token -cvvrf=MGMT -disableaaa -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -taillogs
   no shutdown
```

## Spanning Tree

### Spanning Tree Summary

STP mode: **none**

### Spanning Tree Device Configuration

```eos
!
spanning-tree mode none
```

## Internal VLAN Allocation Policy

### Internal VLAN Allocation Policy Summary

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 1006 | 1199 |

### Internal VLAN Allocation Policy Device Configuration

```eos
!
vlan internal order ascending range 1006 1199
```

## Interfaces

### Ethernet Interfaces

#### Ethernet Interfaces Summary

##### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | Channel-Group |
| --------- | ----------- | ---- | ----- | ----------- | ----------- | ------------- |

*Inherited from Port-Channel Interface

##### Encapsulation Dot1q Interfaces

| Interface | Description | Vlan ID | Dot1q VLAN Tag | Dot1q Inner VLAN Tag |
| --------- | ----------- | ------- | -------------- | -------------------- |
| Ethernet4.10 | C1_L3_SERVICE | - | 10 | - |
| Ethernet4.20 | C2_L3_SERVICE | - | 20 | - |

##### Flexible Encapsulation Interfaces

| Interface | Description | Vlan ID | Client Encapsulation | Client Inner Encapsulation | Client VLAN | Client Outer VLAN Tag | Client Inner VLAN Tag | Network Encapsulation | Network Inner Encapsulation | Network VLAN | Network Outer VLAN Tag | Network Inner VLAN Tag |
| --------- | ----------- | ------- | --------------- | --------------------- | ----------- | --------------------- | --------------------- | ---------------- | ---------------------- |------------ | ---------------------- | ---------------------- |
| Ethernet4.30 | - | - | dot1q | - | 30 | - | - | client | - | - | - | - |

##### IPv4

| Interface | Description | Channel Group | IP Address | VRF |  MTU | Shutdown | ACL In | ACL Out |
| --------- | ----------- | ------------- | ---------- | ----| ---- | -------- | ------ | ------- |
| Ethernet1 | P2P_p2_Ethernet1 | - | 10.255.3.4/31 | default | 9000 | False | - | - |
| Ethernet2 | P2P_p1_Ethernet2 | - | 10.255.3.6/31 | default | 9000 | False | - | - |
| Ethernet4.10 | C1_L3_SERVICE | - | 10.0.1.2/29 | C1_VRF1 | - | False | - | - |
| Ethernet4.20 | C2_L3_SERVICE | - | 10.1.1.2/29 | C2_VRF1 | - | False | - | - |

##### ISIS

| Interface | Channel Group | ISIS Instance | ISIS BFD | ISIS Metric | Mode | ISIS Circuit Type | Hello Padding | ISIS Authentication Mode |
| --------- | ------------- | ------------- | -------- | ----------- | ---- | ----------------- | ------------- | ------------------------ |
| Ethernet1 | - | CORE | - | 50 | point-to-point | level-2 | True | md5 |
| Ethernet2 | - | CORE | - | 50 | point-to-point | level-2 | True | md5 |

#### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_p2_Ethernet1
   no shutdown
   mtu 9000
   no switchport
   ip address 10.255.3.4/31
   mpls ldp igp sync
   mpls ldp interface
   mpls ip
   isis enable CORE
   isis circuit-type level-2
   isis metric 50
   isis hello padding
   isis network point-to-point
   isis authentication mode md5
   isis authentication key 7 <removed>
!
interface Ethernet2
   description P2P_p1_Ethernet2
   no shutdown
   mtu 9000
   no switchport
   ip address 10.255.3.6/31
   mpls ldp igp sync
   mpls ldp interface
   mpls ip
   isis enable CORE
   isis circuit-type level-2
   isis metric 50
   isis hello padding
   isis network point-to-point
   isis authentication mode md5
   isis authentication key 7 <removed>
!
interface Ethernet4
   no shutdown
   no switchport
!
interface Ethernet4.10
   description C1_L3_SERVICE
   no shutdown
   encapsulation dot1q vlan 10
   vrf C1_VRF1
   ip address 10.0.1.2/29
   ip ospf area 0.0.0.0
!
interface Ethernet4.20
   description C2_L3_SERVICE
   no shutdown
   encapsulation dot1q vlan 20
   vrf C2_VRF1
   ip address 10.1.1.2/29
!
interface Ethernet4.30
   no shutdown
   encapsulation vlan
      client dot1q 30 network client
```

### Loopback Interfaces

#### Loopback Interfaces Summary

##### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | ROUTER_ID | default | 10.255.1.2/32 |

##### IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | ROUTER_ID | default | - |

##### ISIS

| Interface | ISIS instance | ISIS metric | Interface mode |
| --------- | ------------- | ----------- | -------------- |
| Loopback0 | CORE | - | passive |

#### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description ROUTER_ID
   no shutdown
   ip address 10.255.1.2/32
   mpls ldp interface
   node-segment ipv4 index 2
   isis enable CORE
   isis passive
```

## Routing

### Service Routing Protocols Model

Multi agent routing protocol model enabled

```eos
!
service routing protocols model multi-agent
```

### Virtual Router MAC Address

#### Virtual Router MAC Address Summary

Virtual Router MAC Address: 00:1c:73:00:dc:00

#### Virtual Router MAC Address Device Configuration

```eos
!
ip virtual-router mac-address 00:1c:73:00:dc:00
```

### IP Routing

#### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | True |
| C1_VRF1 | True |
| C2_VRF1 | True |
| MGMT | False |

#### IP Routing Device Configuration

```eos
!
ip routing
ip routing vrf C1_VRF1
ip routing vrf C2_VRF1
no ip routing vrf MGMT
```

### IPv6 Routing

#### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | False |
| C1_VRF1 | false |
| C2_VRF1 | false |
| MGMT | false |

### Static Routes

#### Static Routes Summary

| VRF | Destination Prefix | Next Hop IP | Exit interface | Administrative Distance | Tag | Route Name | Metric |
| --- | ------------------ | ----------- | -------------- | ----------------------- | --- | ---------- | ------ |
| MGMT | 0.0.0.0/0 | 172.16.100.1 | - | 1 | - | - | - |

#### Static Routes Device Configuration

```eos
!
ip route vrf MGMT 0.0.0.0/0 172.16.100.1
```

### Router OSPF

#### Router OSPF Summary

| Process ID | Router ID | Default Passive Interface | No Passive Interface | BFD | Max LSA | Default Information Originate | Log Adjacency Changes Detail | Auto Cost Reference Bandwidth | Maximum Paths | MPLS LDP Sync Default | Distribute List In |
| ---------- | --------- | ------------------------- | -------------------- | --- | ------- | ----------------------------- | ---------------------------- | ----------------------------- | ------------- | --------------------- | ------------------ |
| 10 | 10.255.1.2 | enabled | Ethernet4.10 <br> | disabled | default | disabled | disabled | - | - | - | - |

#### Router OSPF Router Redistribution

| Process ID | Source Protocol | Include Leaked | Route Map |
| ---------- | --------------- | -------------- | --------- |
| 10 | bgp | disabled | - |

#### OSPF Interfaces

| Interface | Area | Cost | Point To Point |
| -------- | -------- | -------- | -------- |
| Ethernet4.10 | 0.0.0.0 | - | False |

#### Router OSPF Device Configuration

```eos
!
router ospf 10 vrf C1_VRF1
   router-id 10.255.1.2
   passive-interface default
   no passive-interface Ethernet4.10
   redistribute bgp
```

### Router ISIS

#### Router ISIS Summary

| Settings | Value |
| -------- | ----- |
| Instance | CORE |
| Net-ID | 49.0001.0102.5500.1002.00 |
| Type | level-2 |
| Router-ID | 10.255.1.2 |
| Log Adjacency Changes | True |
| MPLS LDP Sync Default | True |
| SR MPLS Enabled | True |

#### ISIS Route Timers

| Settings | Value |
| -------- | ----- |
| Local Convergence Delay | 10000 milliseconds |

#### ISIS Interfaces Summary

| Interface | ISIS Instance | ISIS Metric | Interface Mode |
| --------- | ------------- | ----------- | -------------- |
| Ethernet1 | CORE | 50 | point-to-point |
| Ethernet2 | CORE | 50 | point-to-point |
| Loopback0 | CORE | - | passive |

#### ISIS Segment-routing Node-SID

| Loopback | IPv4 Index | IPv6 Index |
| -------- | ---------- | ---------- |
| Loopback0 | 2 | - |

#### ISIS IPv4 Address Family Summary

| Settings | Value |
| -------- | ----- |
| IPv4 Address-family Enabled | True |
| Maximum-paths | 4 |
| TI-LFA Mode | link-protection |

#### Router ISIS Device Configuration

```eos
!
router isis CORE
   net 49.0001.0102.5500.1002.00
   router-id ipv4 10.255.1.2
   is-type level-2
   log-adjacency-changes
   mpls ldp sync default
   timers local-convergence-delay 10000 protected-prefixes
   !
   address-family ipv4 unicast
      maximum-paths 4
      fast-reroute ti-lfa mode link-protection
   !
   segment-routing mpls
      no shutdown
```

### Router BGP

ASN Notation: asplain

#### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65001 | 10.255.1.2 |

| BGP Tuning |
| ---------- |
| graceful-restart restart-time 300 |
| graceful-restart |
| update wait-install |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| maximum-paths 4 ecmp 4 |

#### Router BGP Peer Groups

##### MPLS-OVERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | mpls |
| Remote AS | 65001 |
| Source | Loopback0 |
| BFD | True |
| Send community | all |
| Maximum routes | 0 (no limit) |

#### BGP Neighbors

| Neighbor | Remote AS | VRF | Shutdown | Send-community | Maximum-routes | Allowas-in | BFD | RIB Pre-Policy Retain | Route-Reflector Client | Passive | TTL Max Hops |
| -------- | --------- | --- | -------- | -------------- | -------------- | ---------- | --- | --------------------- | ---------------------- | ------- | ------------ |
| 10.255.2.1 | Inherited from peer group MPLS-OVERLAY-PEERS | default | - | Inherited from peer group MPLS-OVERLAY-PEERS | Inherited from peer group MPLS-OVERLAY-PEERS | - | Inherited from peer group MPLS-OVERLAY-PEERS | - | - | - | - |
| 10.255.2.2 | Inherited from peer group MPLS-OVERLAY-PEERS | default | - | Inherited from peer group MPLS-OVERLAY-PEERS | Inherited from peer group MPLS-OVERLAY-PEERS | - | Inherited from peer group MPLS-OVERLAY-PEERS | - | - | - | - |
| 10.1.1.3 | 65123 | C2_VRF1 | - | standard | 100 | - | - | - | - | - | - |

#### Router BGP EVPN Address Family

##### EVPN Peer Groups

| Peer Group | Activate | Route-map In | Route-map Out | Encapsulation | Next-hop-self Source Interface |
| ---------- | -------- | ------------ | ------------- | ------------- | ------------------------------ |
| MPLS-OVERLAY-PEERS | True |  - | - | default | - |

##### EVPN Neighbor Default Encapsulation

| Neighbor Default Encapsulation | Next-hop-self Source Interface |
| ------------------------------ | ------------------------------ |
| mpls | Loopback0 |

#### Router BGP VPN-IPv4 Address Family

##### VPN-IPv4 Peer Groups

| Peer Group | Activate | Route-map In | Route-map Out | RCF In | RCF Out |
| ---------- | -------- | ------------ | ------------- | ------ | ------- |
| MPLS-OVERLAY-PEERS | True | - | - | - | - |

#### Router BGP VPWS Instances

| Instance | Route-Distinguisher | Both Route-Target | MPLS Control Word | Label Flow | MTU | Pseudowire | Local ID | Remote ID |
| -------- | ------------------- | ----------------- | ----------------- | -----------| --- | ---------- | -------- | --------- |
| CUSTOMER3 | 10.255.1.2:100 | 100:100 | False | False | - | PW-VPWS-CUSTOMER3_30 | 60 | 60 |

#### Router BGP VRFs

| VRF | Route-Distinguisher | Redistribute | Graceful Restart |
| --- | ------------------- | ------------ | ---------------- |
| C1_VRF1 | 10.255.1.2:10 | connected<br>ospf | - |
| C2_VRF1 | 10.255.1.2:20 | connected | - |

#### Router BGP Device Configuration

```eos
!
router bgp 65001
   router-id 10.255.1.2
   update wait-install
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 4 ecmp 4
   neighbor MPLS-OVERLAY-PEERS peer group
   neighbor MPLS-OVERLAY-PEERS remote-as 65001
   neighbor MPLS-OVERLAY-PEERS update-source Loopback0
   neighbor MPLS-OVERLAY-PEERS bfd
   neighbor MPLS-OVERLAY-PEERS password 7 <removed>
   neighbor MPLS-OVERLAY-PEERS send-community
   neighbor MPLS-OVERLAY-PEERS maximum-routes 0
   neighbor 10.255.2.1 peer group MPLS-OVERLAY-PEERS
   neighbor 10.255.2.1 description rr1_Loopback0
   neighbor 10.255.2.2 peer group MPLS-OVERLAY-PEERS
   neighbor 10.255.2.2 description rr2_Loopback0
   !
   vpws CUSTOMER3
      rd 10.255.1.2:100
      route-target import export evpn 100:100
      !
      pseudowire PW-VPWS-CUSTOMER3_30
         evpn vpws id local 60 remote 60
   !
   address-family evpn
      neighbor default encapsulation mpls next-hop-self source-interface Loopback0
      neighbor MPLS-OVERLAY-PEERS activate
   !
   address-family ipv4
      no neighbor MPLS-OVERLAY-PEERS activate
   !
   address-family vpn-ipv4
      neighbor MPLS-OVERLAY-PEERS activate
      neighbor default encapsulation mpls next-hop-self source-interface Loopback0
   !
   vrf C1_VRF1
      rd 10.255.1.2:10
      route-target import vpn-ipv4 10:10
      route-target export vpn-ipv4 10:10
      router-id 10.255.1.2
      redistribute connected
      redistribute ospf
   !
   vrf C2_VRF1
      rd 10.255.1.2:20
      route-target import vpn-ipv4 20:20
      route-target export vpn-ipv4 20:20
      router-id 10.255.1.2
      update wait-install
      neighbor 10.1.1.3 remote-as 65123
      neighbor 10.1.1.3 description C2_ROUTER1
      neighbor 10.1.1.3 send-community standard
      neighbor 10.1.1.3 maximum-routes 100
      redistribute connected
      !
      address-family ipv4
         neighbor 10.1.1.3 activate
```

## BFD

### Router BFD

#### Router BFD Multihop Summary

| Interval | Minimum RX | Multiplier |
| -------- | ---------- | ---------- |
| 300 | 300 | 3 |

#### Router BFD Device Configuration

```eos
!
router bfd
   multihop interval 300 min-rx 300 multiplier 3
```

## MPLS

### MPLS and LDP

#### MPLS and LDP Summary

| Setting | Value |
| -------- | ---- |
| MPLS IP Enabled | True |
| LDP Enabled | True |
| LDP Router ID | 10.255.1.2 |
| LDP Interface Disabled Default | True |
| LDP Transport-Address Interface | Loopback0 |

### MPLS Interfaces

| Interface | MPLS IP Enabled | LDP Enabled | IGP Sync |
| --------- | --------------- | ----------- | -------- |
| Ethernet1 | True | True | True |
| Ethernet2 | True | True | True |
| Loopback0 | - | True | - |

### MPLS Device Configuration

```eos
!
mpls ip
!
mpls ldp
   router-id 10.255.1.2
   transport-address interface Loopback0
   interface disabled default
   no shutdown
```

## Patch Panel

### Patch Panel Summary

#### Patch Panel Connections

| Patch Name | Enabled | Connector A Type | Connector A Endpoint | Connector B Type | Connector B Endpoint |
| ---------- | ------- | ---------------- | -------------------- | ---------------- | -------------------- |
| PW-VPWS-CUSTOMER3_30 | True | Interface | Ethernet4.30 | Pseudowire | bgp vpws CUSTOMER3 pseudowire PW-VPWS-CUSTOMER3_30 |

### Patch Panel Device Configuration

```eos
!
patch panel
   patch PW-VPWS-CUSTOMER3_30
      connector 1 interface Ethernet4.30
      connector 2 pseudowire bgp vpws CUSTOMER3 pseudowire PW-VPWS-CUSTOMER3_30
   !
```

## Multicast

### IP IGMP Snooping

#### IP IGMP Snooping Summary

| IGMP Snooping | Fast Leave | Interface Restart Query | Proxy | Restart Query Interval | Robustness Variable |
| ------------- | ---------- | ----------------------- | ----- | ---------------------- | ------------------- |
| Enabled | - | - | - | - | - |

#### IP IGMP Snooping Device Configuration

```eos
```

## VRF Instances

### VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| C1_VRF1 | enabled |
| C2_VRF1 | enabled |
| MGMT | disabled |

### VRF Instances Device Configuration

```eos
!
vrf instance C1_VRF1
!
vrf instance C2_VRF1
!
vrf instance MGMT
```

## EOS CLI Device Configuration

```eos
!
management security
 ssl profile eAPI
    cipher-list HIGH:!eNULL:!aNULL:!MD5:!ADH:!ANULL
    certificate eAPI.crt key eAPI.key
!
interface Management1
    no lldp receive
    no lldp transmit
!
management api http-commands
 protocol https ssl profile eAPI
 no shutdown
 !
 vrf MGMT
    no shutdown
!
platform tfa personality arfa
!
event-handler ConfigureHardwareModel
  trigger on-boot
  action bash
     python -m Acons Sysdb << EOF
     cd /ar/Sysdb/hardware/entmib
     if (model := os.getenv('MODEL_NAME')):
        _.fixedSystem.modelName = model
     elif (model := os.getenv('CHASSIS_MODEL_NAME')):
        _.chassis = (1,0,'Chassis')
        _.chassis.modelName = model
        for var, value in os.environ.items():
           if var.startswith('CHASSIS'):
              keys = var.split('_')
              if keys[1] == "SUPERVISOR":
                 i = int(keys[2])
                 _.chassis.cardSlot.newMember(100002000+i, i, 'Supervisor')
                 _.chassis.cardSlot[i].card = (100002100+i, i, 'Supervisor')
                 _.chassis.cardSlot[i].card.modelName = value
              elif keys[1] == "LINECARD":
                 i = int(keys[2]) + 2
                 _.chassis.cardSlot.newMember(100002000+i, i, 'Linecard')
                 _.chassis.cardSlot[i].card = (100002100+i, i, 'Linecard')
                 _.chassis.cardSlot[i].card.modelName = value

     EOF

```
