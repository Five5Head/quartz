###  Ad hoc mode
- Peer-to-peer (P2P) manner without using APs or wireless routers. 
- Examples include wireless clients connecting directly to each other using **Bluetooth or Wi-Fi Direct**.
- The IEEE 802.11 standard refers to an ad hoc network as an independent basic service set (IBSS).
### Infrastructure 
- Clients are interconnecting via a wireless router or AP
- APs connect to the network infrastructure using the wired distribution system, such as Ethernet.
### Tethering (hotspot, Bluetooth tethering)
- A variation of the ad hoc topology
- Smart phone or tablet with cellular data access is enabled to create a personal hotspot.
- Temporary quick solution that enables a smart phone to provide the wireless services of a Wi-Fi router. 

## BSS a ESS
### BSS (Basic set of services)
- Consists of a single AP interconnecting all associated wireless clients. Two BSSs are shown in the figure. The circles depict the coverage area for the BSS, which is called the Basic Service Area (BSA). If a wireless client moves out of its BSA, it can no longer directly communicate with other wireless clients within the BSA.
- The Layer 2 MAC address of the AP is used to uniquely identify each BSS, which is called the Basic Service Set Identifier (BSSID). Therefore, the BSSID is the formal name of the BSS and is always associated with only one AP.
### ESS (Extended set of services)
- When a single BSS provides insufficient coverage, two or more BSSs can be joined through a common distribution system (DS) into an ESS. An ESS is the union of two or more BSSs interconnected by a wired DS. Each ESS is identified by a SSID and each BSS is identified by its BSSID.
- Wireless clients in one BSA can now communicate with wireless clients in another BSA within the same ESS. Roaming mobile wireless clients may move from one BSA to another (within the same ESS) and seamlessly connect.
- The rectangular area in the figure depicts the coverage area within which members of an ESS may communicate. This area is called the Extended Service Area (ESA).
## Frame structure 
- Frame se skládá z headru, payloadu a fcs (frame check sequence)
- All 802.11 wireless frames contain the following fields:
### Frame Control 
- Identifikuje typ bezdrátového framu a obsahuje podpole pro verzi protokolu, typ framu, typ adresy, správu napájení a nastavení zabezpečení.
### Duration 
- Obvykle se používá pro indikaci zbývajícího času potřebného k přijetí dalšího přenosu framu.
### From a wireless device:
- #### Address 1 Receiver Address
	- MAC address of the AP.
- #### Address 2 Transmitter Address
	- MAC address of the sender.
- ####  Address 3 SA/DA/BSSID
	- MAC address of the destination which could be a wireless device or wired device.

### From the AP:
- #### Address 1 Receiver Address
	- MAC address of the sender.
- #### Address 2 Transmitter Address
	- MAC address of the AP.
- #### Address 3 SA/DA/BSSID
	- MAC address of the wireless destination.
- #### Sequence Control
	- This contains information to control sequencing and fragmented frames.
- #### Address4
	- This usually missing because it is used only in ad hoc mode.
### Payload
- This contains the data for transmission.
### FCS 
- This is used for Layer 2 error control.

## CSMA/CA
- WLANy jsou half-duplexní -> to je problém -> řešení = CSMA/CA

1. Listens to the channel to see if it is idle, which means that is senses no other traffic is currently on the channel. The channel is also called the carrier.
2. Sends a request to send (RTS) message to the AP to request dedicated access to the network.
3. Receives a clear to send (CTS) message from the AP granting access to send.
4. If the wireless client does not receive a CTS message, it waits a random amount of time before restarting the process.
5. After it receives the CTS, it transmits the data.
6. All transmissions are acknowledged. If a wireless client does not receive an acknowledgment, it assumes a collision occurred and restarts the process.
## Wireless Client and AP Association
- Discover
- Authenticate
- Associate
- Parametry pro úspěšnou asociaci
	- SSID
	- Password
	- Network mode
		- 802.11a/b/g/n/ac/ad
	- Security mode
		-  WPA, WPA2, WPA3
	- Channel settings