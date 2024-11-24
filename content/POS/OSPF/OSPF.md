## 1. OSPF Features and Characteristics

### Introduction to OSPF

- Link-state routing protocol developed as an alternative to distance vector RIP
- Offers faster convergence and scales to much larger network implementations
- Uses concept of areas to control routing update traffic
- A link is:
    - An interface on a router
    - A network segment connecting two routers
    - A stub network (e.g., Ethernet LAN connected to a single router)
- Link-state information includes network prefix, prefix length, and cost

### Components of OSPF

OSPF uses five types of packets to exchange routing information:

1. Hello packet
2. Database description packet
3. Link-state request packet
4. Link-state update packet
5. Link-state acknowledgment packet

These packets are used to discover neighboring routers and exchange routing information to maintain accurate network information.

OSPF maintains three databases:

1. Adjacency Database (Neighbor Table):
    - List of all neighbor routers with bi-directional communication
    - Unique for each router
    - Viewed using `show ip ospf neighbor` command

2. Link-state Database (LSDB) (Topology Table):
    - Information about all routers in the network
    - Represents the network topology
    - Identical for all routers within an area
    - Viewed using `show ip ospf database` command

3. Forwarding Database (Routing Table):
    - List of routes generated from the LSDB
    - Unique for each router
    - Contains information on how to send packets to other routers
    - Viewed using `show ip route` command

The router builds the topology table using the Dijkstra shortest-path first (SPF) algorithm, which calculates the shortest path to each node based on cumulative cost.

### Link-State Operation

OSPF routers complete the following steps to reach convergence:

1. Establish Neighbor Adjacencies
2. Exchange Link-State Advertisements
3. Build the Link State Database
4. Execute the SPF Algorithm
5. Choose the Best Route

### Single-Area and Multiarea OSPF

OSPF can be implemented in two ways:

1. Single-Area OSPF:
    - All routers are in one area (best practice is to use area 0)

2. Multiarea OSPF:
    - OSPF is implemented using multiple areas in a hierarchical fashion
    - All areas must connect to the backbone area (area 0)
    - Routers connecting areas are called Area Border Routers (ABRs)

Advantages of multiarea OSPF:

- Smaller routing tables due to address summarization
- Reduced link-state update overhead
- Reduced frequency of SPF calculations

### OSPFv3

- Equivalent to OSPFv2 for exchanging IPv6 prefixes
- Uses IPv6 as network layer transport
- Communicates with OSPFv3 peers and advertises IPv6 routes
- Uses SPF algorithm for path computation
- Operates independently from IPv4 OSPF processes

## 2. OSPF Packets

### Types of OSPF Packets

1. Hello (Type 1):
    - Discovers neighbors and builds adjacencies
    - Advertises parameters for neighbor agreement
    - Elects Designated Router (DR) and Backup Designated Router (BDR) on multiaccess networks

2. Database Description (DBD) (Type 2):
    - Checks for database synchronization between routers

3. Link-State Request (LSR) (Type 3):
    - Requests specific link-state records from router to router

4. Link-State Update (LSU) (Type 4):
    - Sends specifically requested link-state records
    - Used to forward OSPF routing updates

5. Link-State Acknowledgment (LSAck) (Type 5):
    - Acknowledges other packet types

## 3. OSPF Operation

### OSPF Operational States

1. Down State:
    - No Hello packets received
    - Router sends Hello packets
    - Transition to Init state

2. Init State:
    - Hello packets received from neighbor
    - Contains Router ID of sending router
    - Transition to Two-Way state

3. Two-Way State:
    - Bidirectional communication established
    - On multiaccess links, DR and BDR are elected
    - Transition to ExStart state

4. ExStart State:
    - Routers decide which will initiate DBD packet exchange
    - Decide initial DBD packet sequence number

5. Exchange State:
    - Routers exchange DBD packets
    - If additional information needed, transition to Loading state
    - Otherwise, transition to Full state

6. Loading State:
    - LSRs and LSUs used to gain additional route information
    - Routes processed using SPF algorithm
    - Transition to Full state

7. Full State:
    - Link-state database fully synchronized

### Establish Neighbor Adjacencies

Process for establishing adjacency on a multiaccess network:

1. Down to Init State:
    - Router sends OSPFv2 Hellos to discover neighbors

2. Init State:
    - Receiving router adds sender's router ID to neighbor list
    - Responds with Hello packet containing its own router ID

3. Two-Way State:
    - Both routers add each other's router ID to neighbor list
    - For point-to-point links, transition to ExStart state
    - For multiaccess networks, DR/BDR election occurs

4. DR & BDR Election:
    - Router with highest router ID or priority elected as DR
    - Second highest becomes BDR

### Synchronizing OSPF Databases

After Two-Way state, routers synchronize databases:

1. Decide first router (highest router ID sends DBD first)
2. Exchange DBDs (acknowledge each with LSAck packet)
3. Send LSRs for more current information

Routers are synchronized and in full state after all LSRs are exchanged and satisfied.

Updates (LSUs) are sent:

- When a change is perceived (incremental updates)
- Every 30 minutes

### The Need for a DR

Multiaccess networks create challenges for OSPF:

1. Creation of multiple adjacencies
2. Extensive flooding of LSAs

### LSA Flooding with a DR

- DR acts as collection and distribution point for LSAs
- BDR is elected as backup
- Other routers become DROTHERs (neither DR nor BDR)
- DR uses multicast address 224.0.0.5 for all OSPF routers
- DROTHERs use multicast address 224.0.0.6 for DR/BDR communication

## 4. Single-Area OSPFv2 Configuration

### OSPF Router ID

- 32-bit value represented as an IPv4 address
- Used to uniquely identify an OSPF router
- All OSPF packets include the router ID of the originating router

Router ID selection order of precedence:

1. Explicitly configured using `router-id` command
2. Highest IPv4 address of any configured loopback interfaces
3. Highest active IPv4 address of any physical interfaces

### Configuring OSPF

Basic configuration:

```
router ospf <process-id>
network <network-address> <wildcard-mask> area <area-id>
```

Interface-specific configuration:

```
interface <interface>
ip ospf <process-id> area <area-id>
```

### Passive Interfaces

Configure passive interfaces to prevent sending routing updates through an interface:

```
router ospf <process-id>
passive-interface <interface>
```

### OSPF Network Types

- Broadcast (default for Ethernet)
- Point-to-point

Change network type:

```
interface <interface>
ip ospf network point-to-point
```

### Loopback Interfaces

- Advertised as /32 host routes by default
- Can be configured as point-to-point to advertise full network

### Multiaccess OSPF Networks

- DR and BDR elected on multiaccess networks
- Use `show ip ospf interface` to verify roles
- Use `show ip ospf neighbor` to verify adjacencies

### DR/BDR Election Process

Election criteria (in order):

1. Highest interface priority
2. Highest router ID

Configure interface priority:

```
interface <interface>
ip ospf priority <value>
```

### OSPF Cost Metric

- Inversely proportional to bandwidth
- Formula: Cost = reference bandwidth / interface bandwidth

Default reference bandwidth is 100,000,000 (100 Mbps)

Adjust reference bandwidth:

```
router ospf <process-id>
auto-cost reference-bandwidth <bandwidth-in-Mbps>
```

Manually set interface cost:

```
interface <interface>
ip ospf cost <value>
```

### Modifying OSPF Timers

Default timers:

- Hello interval: 10 seconds
- Dead interval: 40 seconds (4 times Hello interval)

Modify timers:

```
interface <interface>
ip ospf hello-interval <seconds>
ip ospf dead-interval <seconds>
```

### Default Route Propagation

Configure default route on ASBR:

```
ip route 0.0.0.0 0.0.0.0 <exit-interface or next-hop-IP>
router ospf <process-id>
default-information originate
```

## 5. Verifying Single-Area OSPFv2

### Key Verification Commands

1. `show ip interface brief`: Verify interface status and IP addressing
2. `show ip route`: Verify routing table entries
3. `show ip ospf neighbor`: Verify OSPF neighbor adjacencies
4. `show ip protocols`: Verify OSPF process information
5. `show ip ospf`: Examine OSPF process ID and router ID
6. `show ip ospf interface`: View detailed OSPF interface settings

### Troubleshooting OSPF Neighbor Issues

Reasons for not forming adjacencies:

- Mismatched subnet masks
- Mismatched OSPF timers
- Mismatched OSPF network types
- Missing or incorrect OSPF network commands

## 6. OSPFv3 for IPv6

- Similar functionality to OSPFv2, but for IPv6
- Uses IPv6 as network layer transport
- Advertises IPv6 routes
- Runs independently from IPv4 OSPF processes

Basic OSPFv3 configuration:

```
ipv6 unicast-routing
interface <interface>
ipv6 ospf <process-id> area <area-id>

ipv6 router ospf <process-id>
router-id <router-id>
```

## 7. OSPF Network Types

1. Point-to-Point
    
    - No DR/BDR election
    - Automatically detected on serial interfaces
2. Broadcast Multiaccess
    
    - Ethernet networks
    - DR/BDR election occurs
3. Non-Broadcast Multiaccess (NBMA)
    
    - Frame Relay, ATM
    - Requires manual neighbor configuration
4. Point-to-Multipoint
    
    - Treated as collection of point-to-point links
    - No DR/BDR election

## 8. OSPF Path Selection

OSPF uses cumulative cost to determine the best path:

1. Intra-area paths
2. Inter-area paths
3. External paths (E1 then E2)

## 9. OSPF Virtual Links

- Used to connect physically separated areas to Area 0
- Configured on ABRs

Configuration:

```
router ospf <process-id>
area <transit-area> virtual-link <remote-ABR-router-id>
```

## 10. OSPF Authentication

Enable MD5 authentication:

```
interface <interface>
ip ospf message-digest-key <key-id> md5 <key>
ip ospf authentication message-digest

router ospf <process-id>
area <area-id> authentication message-digest
```

## 11. OSPF Stub Areas

Types of stub areas:

1. Stub
2. Totally Stubby
3. Not-So-Stubby Area (NSSA)

Configure stub area:

```
router ospf <process-id>
area <area-id> stub
```

## 12. OSPF Route Summarization

Summarize routes at ABRs:

```
router ospf <process-id>
area <area-id> range <network> <mask>
```

Summarize external routes at ASBRs:

```
router ospf <process-id>
summary-address <network> <mask>
```

## 13. OSPF Troubleshooting

Common issues:

1. Neighbor adjacency problems
2. Route redistribution issues
3. Area configuration mistakes
4. Authentication mismatches
5. Stub area misconfigurations

Use debug commands cautiously:

```
debug ip ospf events
debug ip ospf adj
debug ip ospf packets
```