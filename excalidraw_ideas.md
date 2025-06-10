#Excalidrwa idea for making slides

### Networking
1. Dijkstra’s SPF algorithm with example
2. STP evolution: STP to MST
3. Types of pings
4. MPLS L2 VPN vs L3 VPN comparison (Kompella, Martini)
5. QoS vs TE vs RSVP comparison
6. VLAN types: native, default, extended, normal
7. Packet forwarding types in cisco (cef, distributed forwarding..)
8. Packet forwarding from ingree to egres interface flow: MAC rewrite, checksum recalculation, TTL decrement
9. Hardware CEF (centralized vs distributed) vs software CEF
10. Cisco IOS router bootup process flowchart
11. OSPF route selection order (longest prefix to N2)
12. MPLS L3 VPN configuration step-by-step (igp, ldp,bgp,vrf,..order)
13. Loop prevention in L2 and L3 (TTL, stp, spf algo,..)
14. Routing protocol timers: RIP, EIGRP, OSPF, BGP
15. BGP route processing flowchart -adj rib in and out (refer from CCIE guide)
16. BGP neighbor adjacency states explain with PCAP
17. OSPF route filtering: ACL, prefix-list, route-map, summary no-advertise
18. Network topology: R1 to R2 in Area 1 without Area 0. will it work? yes, but can't extend
19. TOS vs DSCP comparison: Default, Assured, Class Selector, Expedited Forwarding
20. IS-IS vs OSPF comparison
21. BGP neighbor adjacency troubleshooting
22. EIGRP configuration and troubleshooting steps
23. MPLS Traffic Engineering with RSVP-TE
24. BGP attributes and path selection process
25. VXLAN vs VLAN: use cases and differences
26. 802.1Q VLAN tagging and trunking explained
27. Network latency vs throughput vs jitter
28. BGP flowspec for DDoS mitigation
29. BGP communities and their use cases
30. Multicast routing protocols: PIM-SM vs PIM-DM
31. SR-TE (Segment Routing Traffic Engineering) policies
32. MPLS Fast Reroute (FRR) mechanisms
33. BGP route reflectors vs confederations
34. MPLS Segment Routing with PCE (Path Computation Element)
35. MPLS LDP vs RSVP comparison
36. SRv6 traffic engineering with segment lists
37. MPLS L3VPN inter-AS options (Option A, B, C)
38. BGP conditional route advertisement techniques
39. BGP prefix hijacking detection and prevention
40. BGP SR-TE policies for low-latency paths
41. MPLS L2VPN pseudowire redundancy
42. BGP route server design for IXPs (Internet Exchange Points)
43. BGP link-state (BGP-LS) for topology discovery
44. BGP multi-path load balancing techniques
45. BGP route leaks and mitigation techniques
46. BGP route aggregation with suppress-maps
47. BGP local preference vs MED comparison
48. MPLS VPN route target filtering
49. MPLS LDP session protection
50. MPLS L2VPN VPWS vs VPLS
51. BGP graceful restart vs nonstop routing
52. OSPF LSA types and their roles
53. OSPF virtual link configuration and use cases
54. Segment Routing vs traditional MPLS
55. SRv6 (Segment Routing over IPv6) basics
56. LISP (Locator/ID Separation Protocol) overview
57. BGP EVPN for data center networking
58. EVPN with VXLAN
59. VxLAN BGP EVPN configuration steps
60. BGP EVPN multi-homing with ESI (Ethernet Segment Identifier)
61. BGP route target constraints for VPN scalability
62. BGP prefix list optimization for large-scale networks
63. BGP SRv6 VPNs for next-gen services
64. BGP SRv6 for next-gen service provider networks
65. SR-MPLS vs SRv6 for service provider networks
66. LACP (Link Aggregation Control Protocol) vs static LAG
67. LACP (Link Aggregation Control Protocol) configuration and troubleshooting guide
68. Multi-cloud connectivity with BGP
69. BGP multi-homing design and best practices
70. BGP route dampening configuration and tuning
71. QoS queuing mechanisms: FIFO, WFQ, CBWFQ, LLQ
72. P4 programming for custom packet processing
73. P4 programming for custom packet processing with examples
74. Network chaos engineering with tools like Chaos Monkey
75. Network orchestration vs automation
76. Intent-Based Networking (IBN)
77. Cisco DNA and use cases
78. Cisco ACI fabric setup and APIC configuration
79. Cisco ACI policy-based networking: contracts and EPG configuration
80. Network virtualization: VMware NSX vs Cisco ACI
81. F5 load balancer traffic flow
82. Cloud-native networking: AWS VPC vs Azure VNet
83. Packet flow: LAN to ISP via international peering (OSI model)
84. Network Time Protocol (NTP) vs Precision Time Protocol (PTP)
85. Network Time Protocol (NTP) vs Precision Time Protocol (PTP) comparison
86. MPLS L2VPN with AToM (Any Transport over MPLS)
87. GRE vs IP-in-IP tunneling protocols

### Linux
88. Vim vs Nano commands
89. Linux file types
90. Linux (Debian) vs Windows WiFi cli commands (netsh in windows vs iw, iwinfo, ubus, wifi,..)
91. Linux IP commands: ip link, ip a, ip r
92. Linux architecture
93. Linux network admin commands
94. Linux terminal shortcuts
95. Linux scheduling: Cron vs Systemd timers
96. MBR vs GPT partition
97. Linux distributions and their uses
98. Linux iptables vs nftables comparison
99. Linux kernel networking stack overview
100. Linux network namespaces for container isolation
101. Open vSwitch (OVS) vs Linux bridge for virtual networking
102. Linux tc (traffic control) for QoS configuration
103. eBPF for network monitoring and tracing
104. eBPF for advanced Linux network monitoring and tracing
105. Linux iproute2 suite for advanced networking
106. Linux conntrack for stateful firewalling
107. Linux VRF (Virtual Routing and Forwarding) setup
108. Linux firewalld vs iptables for firewall management
109. Linux nftables for advanced packet filtering
110. Linux tc (traffic control) for QoS: shaping and policing examples
111. Linux netstat vs ss for network diagnostics
112. Linux ipset for efficient firewall rules
113. Linux socket programming for network applications
114. Linux ethtool for NIC configuration and diagnostics
115. Linux ipvs for load balancing
116. Linux bridge vs macvlan for container networking
117. Linux ip6tables for IPv6 firewalling
118. Linux systemd-networkd vs NetworkManager
119. Linux conntrack-tools for connection tracking
120. Linux ipset vs nftables for firewall efficiency
121. Linux tc qdisc for bandwidth control
122. Linux ip rule for policy-based routing
123. Linux ip addrlabel for IPv6 address selection
124. Netfilter framework in Linux for packet filtering
125. Linux nftables with eBPF integration
126. Linux tc advanced queuing disciplines (HTB, TBF)
127. Linux netfilter hooks for custom packet processing
128. Linux tc flower for hardware offloading
129. Linux ip xfrm for IPsec configuration
130. Boot Ubuntu via live USB step by step explained
131. Secure Boot process in Linux and Windows

### SD-WAN
132. SD-WAN architecture
133. SD-WAN vs traditional WAN comparison
134. SD-WAN security with SASE
135. SD-WAN overlay vs underlay network design
136. SD-WAN multi-tenancy design and security
137. SD-WAN zero-touch provisioning (ZTP) workflows
138. SD-WAN traffic steering with application-aware routing
139. SD-WAN integration with cloud security gateways
140. SD-WAN analytics with AI-driven insights
141. SD-WAN integration with SASE for zero trust
142. SD-WAN orchestration with VMware Velocloud
143. SD-WAN dynamic path selection algorithms
144. SD-WAN QoS for real-time applications
145. SD-WAN cloud on-ramp configuration
146. SD-WAN path selection with SLA monitoring

### Network Automation
147. Network automation (Python Netmiko, Paramiko, Nornir, Jinja2, Ansible, Bash)
148. Network automation data models: YANG, NETCONF, RESTCONF
149. Network automation with Ansible playbook
150. Ansible vs Python automation use cases
151. Python TextFSM and networking use cases
152. Network automation tools: Nornir vs Ansible vs SaltStack
153. Python NAPALM for network automation
154. Network automation with GNS3 and Python
155. Network automation with Cisco PyATS
156. Python for automating Cisco IOS-XR devices
157. Python for automating Aruba switches
158. Network Function Virtualization (NFV) architecture
159. Network Function Virtualization (NFV) vs Software-Defined Networking (SDN) comparison
160. gNMI (gRPC Network Management Interface) for telemetry
161. gNMI (gRPC Network Management Interface) telemetry setup and use cases
162. YANG model validation with pyang
163. Network automation with Terraform for infrastructure as code
164. Python Genie for Cisco device automation
165. Network automation with GoBGP for BGP management
166. Python for automating Arista devices with pyeapi
167. Network automation with Cisco NSO (Network Services Orchestrator)
168. Python for automating Palo Alto firewalls with PAN-OS API
169. Python for Cisco Meraki API automation
170. Network automation with SaltStack vs Ansible
171. Network automation testing with Robot Framework
172. Network automation with OpenStack Neutron for cloud networking
173. Python for automating Fortinet firewalls with FortiOS API
174. Network automation with Cumulus Linux and Ansible
175. Network automation with Red Hat Ansible Networking
176. Network automation with Huawei iMaster NCE
177. Network automation with OpenWRT for wireless routers
178. Python for automating Cisco SD-WAN (vManage)
179. OpenConfig for vendor-neutral network management
180. Python for automating Juniper devices with PyEZ
181. Python for SDN controller integration (e.g., ONOS, OpenDaylight)
182. Network automation with NAPALM vs Netmiko
183. Network automation with Python and Batfish for configuration validation
184. Network automation with Nokia SR Linux and YANG
185. CI/CD pipeline for network configurations
186. Python TTP (Template Text Parser) for parsing CLI output
187. DPDK (Data Plane Development Kit) for high-speed packet processing

### Wireless
188. Wireless terms: TDMA, FDMA, OFDM, OFDMA, MIMO, MU-MIMO, BPSK, QPSK, QAM, 16QAM, MLO
189. 3G, 4G, 5G, WiFi, Bluetooth, nfc, zigbee comparison table
190. Wireless 4-way handshake: WPA2, WPA3
191. Bluetooth vs WiFi frequency band comparison
192. WiFi 6 vs WiFi 6E: frequency bands and benefits
193. WiFi 7 key features and improvements
194. WiFi 7 features: 320 MHz channels, 4096-QAM, Multi-Link Operation
195. WiFi 6E vs WiFi 7: spectrum and performance analysis
196. WiFi WPA3 SAE (Simultaneous Authentication of Equals) handshake
197. WiFi 6 MU-MIMO vs OFDMA performance comparison
198. WiFi mesh networking protocols and standards
199. WiFi roaming protocols: 802.11r, 802.11k, 802.11v
200. WiFi 6/6E channel bonding and wide channels
201. WiFi Easy Connect for device onboarding
202. WiFi 6/6E spectrum analysis with Wireshark
203. WiFi 7 Multi-AP coordination for mesh networks
204. WiFi 7 latency reduction with TWT (Target Wake Time)
205. WiFi spectrum interference mitigation techniques
206. WiFi 6/6E channel planning and optimization
207. WiFi 7 vs 5G: use case comparison
208. WiFi 6 OFDMA resource unit allocation
209. WiFi 6 MU-MIMO uplink vs downlink
210. WiFi 802.11ax power-saving mechanisms
211. WiFi 6E spectrum allocation challenges

### Security
212. IPsec, TLS vs SSH comparison
213. Certificate types (X.509, self-signed, CA-issued, DV, OV, EV)
214. OpenSSL commands for certificate types (PEM, DER), CA/ICA/server certificate generation
215. CIA triad comparison
216. SSH handshake with PCAP
217. IPsec vs WireGuard vs OpenVPN comparison
218. RSA, DH, DSA, HKDF, MD5, SHA, HMAC workings
219. TLS 1.2, 1.3, DTLS, QUIC PCAP comparison (quic only UDP packet, explain each upd pkt meaning)
220. OpenSSL all commands with examples
221. TLS certificate: Google certificate with commands
222. Zero Trust security with 802.1X, IPsec, TLS
223. Post-quantum cryptography in networking: CRYSTALS-Kyber in TLS/IPsec
224. Zero Trust Network Access (ZTNA) vs traditional VPN
225. Zero Trust Network Access (ZTNA) frameworks and implementation
226. DNSSEC configuration and validation
227. 802.1X authentication with RADIUS and EAP
228. BGPsec for securing BGP routing
229. Cloudflare WARP vs traditional VPNs
230. Network security with 802.1AE (MACsec) configuration
231. Network security with MACsec
232. Network security with S/MIME for email encryption
233. QUIC protocol deep dive with Wireshark
234. QUIC protocol vs TCP performance comparison with real-time PCAP

### Python
235. Python exceptions with example
236. Python function types (4) with example
237. Why Python stores integers with 28 bytes
238. Python data types: int, float, dict, set
239. Python script for finding high-utilized directories alone
240. Testing Python scripts in interactive mode
241. Python Scapy for packet crafting and analysis
242. Python for network packet analysis with dpkt
243. Python for network visualization with NetworkX
244. Python for network traffic generation with Scapy
245. Python for network log analysis with ELK stack
246. Python for network topology discovery with LLDP/CDP
247. Python for network device inventory with Nmap
248. Python for network performance monitoring with Telegraf
249. Python for network anomaly detection with ML
250. Python for parsing NetFlow data

### Operating Systems
251. Windows vs Android file structure
252. Windows, Linux vs Mac OS comparison
253. Windows pktmon vs tcpdump: commands, comparison and use cases
254. Android boot sequence
255. IPv4 vs IPv6 header
256. IPv6 transition mechanisms: NAT64, 6to4, Teredo

### Hardware
257. CPU architectures
258. Common terms in chip manufacturing and current small form factors
259. Cisco NCS router vs Juniper router hardware comparison
260. CPU vs FPGA vs ASICs
261. Router components: hardware (RAM, memory) vs software (bootloader, NVRAM)
262. Mobile device chipsets: Qualcomm vs MediaTek vs Apple A-series
263. Laptop hardware specs: CPU, GPU, RAM, SSD comparison
264. Camera sensor technologies in smartphones

### 5G
265. Private 5G networks for enterprises
266. Network slicing in 5G
267. Time-Sensitive Networking (TSN) for Industrial IoT
268. 5G NR (New Radio) architecture and components
269. 5G SA (Standalone) vs NSA (Non-Standalone) deployment
270. 5G mmWave vs Sub-6 GHz frequency bands
271. Network slicing for IoT and enterprise use cases
272. 5G Open RAN architecture and deployment models
273. 5G private network slicing for industrial IoT
274. 5G NR dual connectivity (EN-DC) explained
275. 5G URLLC (Ultra-Reliable Low-Latency Communication) use cases
276. 5G network slicing for V2X (Vehicle-to-Everything)
277. 5G core network orchestration with ONAP
278. 5G non-terrestrial networks (NTN) with satellite integration
279. 5G network function disaggregation with CUPS
280. 5G network security with SEPP (Security Edge Protection Proxy)
281. 5G network slicing for AR/VR applications
282. 5G network slicing orchestration with ETSI MANO
283. 5G NR carrier aggregation explained
284. 5G network slicing for low-latency gaming
285. 5G NR beamforming and MIMO techniques
286. 5G core network components and functions
287. 5G NR protocol stack and signaling flow
288. 5G edge computing with MEC (Multi-access Edge Computing)
289. Network slicing with Open RAN

### Miscellaneous
290. Electronics and communications in satellite communication
291. HTTP error codes with local PCAP
292. RESTful API cURL methods with real-time PCAP
293. DNS query types (record types) in PCAP (Linux)
294. DHCP relay agent case with PCAP
295. HTTP status codes (200–500)
296. MTU vs MSS
297. OpenSSH commands: SFTP, ssh-keygen
298. IoT protocols: MQTT vs CoAP
299. NetFlow vs sFlow vs IPFIX
300. Packet capture pipeline: Wireshark, tcpdump examples
301. Network telemetry: gRPC, YANG
302. Network monitoring: SNMP vs NetFlow
303. Container networking: Docker/Kubernetes vs Linux LXC
304. Zero-Configuration Networking: mDNS, DNS-SD
305. DNS over HTTPS (DoH) vs DNS over TLS (DoT)
306. Network observability with Prometheus and Grafana
307. Network observability with Prometheus and Grafana: setup and dashboards
308. Network performance testing with iperf3
309. Wireshark filters for common network protocols
310. Capturing TLS 1.2/1.3 sessions in Windows, Wireshark decryption
311. RESTful API: cURL vs Wireshark output
312. Data serialization: JSON, XML, YAML
313. Network troubleshooting with mtr (My Traceroute)
314. Network troubleshooting with tcpflow for stream analysis
315. Network troubleshooting with ngrep for packet inspection
316. Network telemetry with Kafka and Elasticsearch
317. Zero-touch provisioning (ZTP) for network devices
318. gRPC vs REST for network APIs
319. Why video resolution are 720, 1080...? What is 4k and 8k?

### Additional Topics
320. BGP Anycast routing for CDN optimization
321. Linux perf for network performance profiling
322. SD-WAN application performance monitoring with DPI
323. WiFi 6E co-existence with legacy WiFi standards
324. Python for automating VMware NSX with REST API
325. 5G network slicing for smart cities
326. Network automation with ONOS SDN controller
327. BGP route flap dampening vs route suppression
328. Linux tc ingress policing for traffic control
329. SD-WAN multi-cloud interconnect with Megaport
330. WiFi 7 QoS enhancements for real-time applications
331. Python for network configuration auditing with Nornir
332. MPLS L3VPN Carrier Supporting Carrier (CSC) model
333. Linux bpftrace for network debugging
334. SD-WAN integration with Microsoft Azure Virtual WAN
335. WiFi 6/6E DFS (Dynamic Frequency Selection) mechanisms
336. Python for automating F5 BIG-IP with iControl REST
337. 5G network slicing for healthcare IoT
338. BGP ORF (Outbound Route Filtering) configuration
339. Linux ip tunnel for GRE and VXLAN setups
340. SD-WAN path redundancy with 4G/5G failover
341. WiFi 7 multi-band operation for IoT devices
342. Python for network traffic analysis with Zeek
343. MPLS L2VPN interworking with Ethernet and ATM
344. Linux ss vs lsof for socket analysis
345. SD-WAN security with next-gen firewall integration
346. WiFi 6E spectrum sharing with 5G NR-U
347. Python for automating AWS Transit Gateway
348. 5G network slicing for autonomous vehicles
349. BGP add-path for improved path diversity
350. Linux tc mirred for traffic mirroring
351. SD-WAN centralized policy enforcement with Cisco vSmart
