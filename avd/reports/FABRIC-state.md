# Validate State Report

**Table of Contents:**

- [Validate State Report](validate-state-report)
  - [Test Results Summary](#test-results-summary)
  - [Failed Test Results Summary](#failed-test-results-summary)
  - [All Test Results](#all-test-results)

## Test Results Summary

### Summary Totals

| Total Tests | Total Tests Passed | Total Tests Failed | Total Tests Skipped |
| ----------- | ------------------ | ------------------ | ------------------- |
| 149 | 113 | 0 | 36 |

### Summary Totals Device Under Test

| Device Under Test | Total Tests | Tests Passed | Tests Failed | Tests Skipped | Categories Failed | Categories Skipped |
| ------------------| ----------- | ------------ | ------------ | ------------- | ----------------- | ------------------ |
| p1 | 19 | 15 | 0 | 4 | - | Hardware |
| p2 | 19 | 15 | 0 | 4 | - | Hardware |
| p3 | 16 | 12 | 0 | 4 | - | Hardware |
| p4 | 16 | 12 | 0 | 4 | - | Hardware |
| pe1 | 16 | 12 | 0 | 4 | - | Hardware |
| pe2 | 16 | 12 | 0 | 4 | - | Hardware |
| pe3 | 15 | 11 | 0 | 4 | - | Hardware |
| rr1 | 16 | 12 | 0 | 4 | - | Hardware |
| rr2 | 16 | 12 | 0 | 4 | - | Hardware |

### Summary Totals Per Category

| Test Category | Total Tests | Tests Passed | Tests Failed | Tests Skipped |
| ------------- | ----------- | ------------ | ------------ | ------------- |
| Connectivity | 52 | 52 | 0 | 0 |
| Hardware | 36 | 0 | 0 | 36 |
| Interfaces | 43 | 43 | 0 | 0 |
| System | 18 | 18 | 0 | 0 |

## Failed Test Results Summary

| ID | Device Under Test | Categories | Test | Description | Inputs | Result | Messages |
| -- | ----------------- | ---------- | ---- | ----------- | ------ | -------| -------- |

## All Test Results

| ID | Device Under Test | Categories | Test | Description | Inputs | Result | Messages |
| -- | ----------------- | ---------- | ---- | ----------- | ------ | -------| -------- |
| 1 | p1 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet1 - Remote: pe1 Ethernet1 | PASS | - |
| 2 | p1 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet2 - Remote: pe2 Ethernet2 | PASS | - |
| 3 | p1 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet3 - Remote: rr1 Ethernet3 | PASS | - |
| 4 | p1 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet4 - Remote: p2 Ethernet4 | PASS | - |
| 5 | p1 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet1 (IP: 10.255.3.1) - Destination: pe1 Ethernet1 (IP: 10.255.3.0) | PASS | - |
| 6 | p1 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet2 (IP: 10.255.3.7) - Destination: pe2 Ethernet2 (IP: 10.255.3.6) | PASS | - |
| 7 | p1 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet3 (IP: 10.255.3.11) - Destination: rr1 Ethernet3 (IP: 10.255.3.10) | PASS | - |
| 8 | p1 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet4 (IP: 10.255.3.8) - Destination: p2 Ethernet4 (IP: 10.255.3.9) | PASS | - |
| 9 | p1 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab |
| 10 | p1 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab |
| 11 | p1 | Hardware | VerifyTemperature | Verifies if the device temperature is within acceptable limits. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab |
| 12 | p1 | Hardware | VerifyTransceiversManufacturers | Verifies if all the transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab |
| 13 | p1 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet1 - P2P_pe1_Ethernet1 = 'up' | PASS | - |
| 14 | p1 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet2 - P2P_pe2_Ethernet2 = 'up' | PASS | - |
| 15 | p1 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet3 - P2P_rr1_Ethernet3 = 'up' | PASS | - |
| 16 | p1 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet4 - P2P_p2_Ethernet4 = 'up' | PASS | - |
| 17 | p1 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Loopback0 - ROUTER_ID = 'up' | PASS | - |
| 18 | p1 | System | VerifyNTP | Verifies if NTP is synchronised. | - | PASS | - |
| 19 | p1 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 20 | p2 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet1 - Remote: pe2 Ethernet1 | PASS | - |
| 21 | p2 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet2 - Remote: pe1 Ethernet2 | PASS | - |
| 22 | p2 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet3 - Remote: rr2 Ethernet3 | PASS | - |
| 23 | p2 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet4 - Remote: p1 Ethernet4 | PASS | - |
| 24 | p2 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet1 (IP: 10.255.3.5) - Destination: pe2 Ethernet1 (IP: 10.255.3.4) | PASS | - |
| 25 | p2 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet2 (IP: 10.255.3.3) - Destination: pe1 Ethernet2 (IP: 10.255.3.2) | PASS | - |
| 26 | p2 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet3 (IP: 10.255.3.17) - Destination: rr2 Ethernet3 (IP: 10.255.3.16) | PASS | - |
| 27 | p2 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet4 (IP: 10.255.3.9) - Destination: p1 Ethernet4 (IP: 10.255.3.8) | PASS | - |
| 28 | p2 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab |
| 29 | p2 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab |
| 30 | p2 | Hardware | VerifyTemperature | Verifies if the device temperature is within acceptable limits. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab |
| 31 | p2 | Hardware | VerifyTransceiversManufacturers | Verifies if all the transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab |
| 32 | p2 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet1 - P2P_pe2_Ethernet1 = 'up' | PASS | - |
| 33 | p2 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet2 - P2P_pe1_Ethernet2 = 'up' | PASS | - |
| 34 | p2 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet3 - P2P_rr2_Ethernet3 = 'up' | PASS | - |
| 35 | p2 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet4 - P2P_p1_Ethernet4 = 'up' | PASS | - |
| 36 | p2 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Loopback0 - ROUTER_ID = 'up' | PASS | - |
| 37 | p2 | System | VerifyNTP | Verifies if NTP is synchronised. | - | PASS | - |
| 38 | p2 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 39 | p3 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet1 - Remote: pe3 Ethernet1 | PASS | - |
| 40 | p3 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet2 - Remote: rr1 Ethernet2 | PASS | - |
| 41 | p3 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet4 - Remote: p4 Ethernet4 | PASS | - |
| 42 | p3 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet1 (IP: 10.255.3.23) - Destination: pe3 Ethernet1 (IP: 10.255.3.22) | PASS | - |
| 43 | p3 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet2 (IP: 10.255.3.13) - Destination: rr1 Ethernet2 (IP: 10.255.3.12) | PASS | - |
| 44 | p3 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet4 (IP: 10.255.3.20) - Destination: p4 Ethernet4 (IP: 10.255.3.21) | PASS | - |
| 45 | p3 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab |
| 46 | p3 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab |
| 47 | p3 | Hardware | VerifyTemperature | Verifies if the device temperature is within acceptable limits. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab |
| 48 | p3 | Hardware | VerifyTransceiversManufacturers | Verifies if all the transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab |
| 49 | p3 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet1 - P2P_pe3_Ethernet1 = 'up' | PASS | - |
| 50 | p3 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet2 - P2P_rr1_Ethernet2 = 'up' | PASS | - |
| 51 | p3 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet4 - P2P_p4_Ethernet4 = 'up' | PASS | - |
| 52 | p3 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Loopback0 - ROUTER_ID = 'up' | PASS | - |
| 53 | p3 | System | VerifyNTP | Verifies if NTP is synchronised. | - | PASS | - |
| 54 | p3 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 55 | p4 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet2 - Remote: rr2 Ethernet2 | PASS | - |
| 56 | p4 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet3 - Remote: pe3 Ethernet3 | PASS | - |
| 57 | p4 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet4 - Remote: p3 Ethernet4 | PASS | - |
| 58 | p4 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet2 (IP: 10.255.3.19) - Destination: rr2 Ethernet2 (IP: 10.255.3.18) | PASS | - |
| 59 | p4 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet3 (IP: 10.255.3.25) - Destination: pe3 Ethernet3 (IP: 10.255.3.24) | PASS | - |
| 60 | p4 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet4 (IP: 10.255.3.21) - Destination: p3 Ethernet4 (IP: 10.255.3.20) | PASS | - |
| 61 | p4 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab |
| 62 | p4 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab |
| 63 | p4 | Hardware | VerifyTemperature | Verifies if the device temperature is within acceptable limits. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab |
| 64 | p4 | Hardware | VerifyTransceiversManufacturers | Verifies if all the transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab |
| 65 | p4 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet2 - P2P_rr2_Ethernet2 = 'up' | PASS | - |
| 66 | p4 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet3 - P2P_pe3_Ethernet3 = 'up' | PASS | - |
| 67 | p4 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet4 - P2P_p3_Ethernet4 = 'up' | PASS | - |
| 68 | p4 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Loopback0 - ROUTER_ID = 'up' | PASS | - |
| 69 | p4 | System | VerifyNTP | Verifies if NTP is synchronised. | - | PASS | - |
| 70 | p4 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 71 | pe1 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet1 - Remote: p1 Ethernet1 | PASS | - |
| 72 | pe1 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet2 - Remote: p2 Ethernet2 | PASS | - |
| 73 | pe1 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet1 (IP: 10.255.3.0) - Destination: p1 Ethernet1 (IP: 10.255.3.1) | PASS | - |
| 74 | pe1 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet2 (IP: 10.255.3.2) - Destination: p2 Ethernet2 (IP: 10.255.3.3) | PASS | - |
| 75 | pe1 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab |
| 76 | pe1 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab |
| 77 | pe1 | Hardware | VerifyTemperature | Verifies if the device temperature is within acceptable limits. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab |
| 78 | pe1 | Hardware | VerifyTransceiversManufacturers | Verifies if all the transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab |
| 79 | pe1 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet1 - P2P_p1_Ethernet1 = 'up' | PASS | - |
| 80 | pe1 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet2 - P2P_p2_Ethernet2 = 'up' | PASS | - |
| 81 | pe1 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet3 = 'up' | PASS | - |
| 82 | pe1 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet3.10 - C1_L3_SERVICE = 'up' | PASS | - |
| 83 | pe1 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet3.20 - C2_L3_SERVICE = 'up' | PASS | - |
| 84 | pe1 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Loopback0 - ROUTER_ID = 'up' | PASS | - |
| 85 | pe1 | System | VerifyNTP | Verifies if NTP is synchronised. | - | PASS | - |
| 86 | pe1 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 87 | pe2 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet1 - Remote: p2 Ethernet1 | PASS | - |
| 88 | pe2 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet2 - Remote: p1 Ethernet2 | PASS | - |
| 89 | pe2 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet1 (IP: 10.255.3.4) - Destination: p2 Ethernet1 (IP: 10.255.3.5) | PASS | - |
| 90 | pe2 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet2 (IP: 10.255.3.6) - Destination: p1 Ethernet2 (IP: 10.255.3.7) | PASS | - |
| 91 | pe2 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab |
| 92 | pe2 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab |
| 93 | pe2 | Hardware | VerifyTemperature | Verifies if the device temperature is within acceptable limits. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab |
| 94 | pe2 | Hardware | VerifyTransceiversManufacturers | Verifies if all the transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab |
| 95 | pe2 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet1 - P2P_p2_Ethernet1 = 'up' | PASS | - |
| 96 | pe2 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet2 - P2P_p1_Ethernet2 = 'up' | PASS | - |
| 97 | pe2 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet4 = 'up' | PASS | - |
| 98 | pe2 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet4.10 - C1_L3_SERVICE = 'up' | PASS | - |
| 99 | pe2 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet4.20 - C2_L3_SERVICE = 'up' | PASS | - |
| 100 | pe2 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Loopback0 - ROUTER_ID = 'up' | PASS | - |
| 101 | pe2 | System | VerifyNTP | Verifies if NTP is synchronised. | - | PASS | - |
| 102 | pe2 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 103 | pe3 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet1 - Remote: p3 Ethernet1 | PASS | - |
| 104 | pe3 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet3 - Remote: p4 Ethernet3 | PASS | - |
| 105 | pe3 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet1 (IP: 10.255.3.22) - Destination: p3 Ethernet1 (IP: 10.255.3.23) | PASS | - |
| 106 | pe3 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet3 (IP: 10.255.3.24) - Destination: p4 Ethernet3 (IP: 10.255.3.25) | PASS | - |
| 107 | pe3 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab |
| 108 | pe3 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab |
| 109 | pe3 | Hardware | VerifyTemperature | Verifies if the device temperature is within acceptable limits. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab |
| 110 | pe3 | Hardware | VerifyTransceiversManufacturers | Verifies if all the transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab |
| 111 | pe3 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet1 - P2P_p3_Ethernet1 = 'up' | PASS | - |
| 112 | pe3 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet2 - C1_L3_SERVICE = 'up' | PASS | - |
| 113 | pe3 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet3 - P2P_p4_Ethernet3 = 'up' | PASS | - |
| 114 | pe3 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet4 - C2_L3_SERVICE = 'up' | PASS | - |
| 115 | pe3 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Loopback0 - ROUTER_ID = 'up' | PASS | - |
| 116 | pe3 | System | VerifyNTP | Verifies if NTP is synchronised. | - | PASS | - |
| 117 | pe3 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 118 | rr1 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet2 - Remote: p3 Ethernet2 | PASS | - |
| 119 | rr1 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet3 - Remote: p1 Ethernet3 | PASS | - |
| 120 | rr1 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet4 - Remote: rr2 Ethernet4 | PASS | - |
| 121 | rr1 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet2 (IP: 10.255.3.12) - Destination: p3 Ethernet2 (IP: 10.255.3.13) | PASS | - |
| 122 | rr1 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet3 (IP: 10.255.3.10) - Destination: p1 Ethernet3 (IP: 10.255.3.11) | PASS | - |
| 123 | rr1 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet4 (IP: 10.255.3.14) - Destination: rr2 Ethernet4 (IP: 10.255.3.15) | PASS | - |
| 124 | rr1 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab |
| 125 | rr1 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab |
| 126 | rr1 | Hardware | VerifyTemperature | Verifies if the device temperature is within acceptable limits. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab |
| 127 | rr1 | Hardware | VerifyTransceiversManufacturers | Verifies if all the transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab |
| 128 | rr1 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet2 - P2P_p3_Ethernet2 = 'up' | PASS | - |
| 129 | rr1 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet3 - P2P_p1_Ethernet3 = 'up' | PASS | - |
| 130 | rr1 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet4 - P2P_rr2_Ethernet4 = 'up' | PASS | - |
| 131 | rr1 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Loopback0 - ROUTER_ID = 'up' | PASS | - |
| 132 | rr1 | System | VerifyNTP | Verifies if NTP is synchronised. | - | PASS | - |
| 133 | rr1 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 134 | rr2 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet2 - Remote: p4 Ethernet2 | PASS | - |
| 135 | rr2 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet3 - Remote: p2 Ethernet3 | PASS | - |
| 136 | rr2 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | Local: Ethernet4 - Remote: rr1 Ethernet4 | PASS | - |
| 137 | rr2 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet2 (IP: 10.255.3.18) - Destination: p4 Ethernet2 (IP: 10.255.3.19) | PASS | - |
| 138 | rr2 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet3 (IP: 10.255.3.16) - Destination: p2 Ethernet3 (IP: 10.255.3.17) | PASS | - |
| 139 | rr2 | Connectivity | VerifyReachability | Test network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet4 (IP: 10.255.3.15) - Destination: rr1 Ethernet4 (IP: 10.255.3.14) | PASS | - |
| 140 | rr2 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab |
| 141 | rr2 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab |
| 142 | rr2 | Hardware | VerifyTemperature | Verifies if the device temperature is within acceptable limits. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab |
| 143 | rr2 | Hardware | VerifyTransceiversManufacturers | Verifies if all the transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab |
| 144 | rr2 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet2 - P2P_p4_Ethernet2 = 'up' | PASS | - |
| 145 | rr2 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet3 - P2P_p2_Ethernet3 = 'up' | PASS | - |
| 146 | rr2 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Ethernet4 - P2P_rr1_Ethernet4 = 'up' | PASS | - |
| 147 | rr2 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | Interface Loopback0 - ROUTER_ID = 'up' | PASS | - |
| 148 | rr2 | System | VerifyNTP | Verifies if NTP is synchronised. | - | PASS | - |
| 149 | rr2 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
