package axi_pack;
    // AXI Transaction Length Type
    typedef logic [7:0] len_type;
    // AXI Transaction Size Type
    typedef logic [2:0] size_type;
    // AXI Transaction Burst Type
    typedef logic [1:0] burst_type;
    // AXI Transaction Cache Type
    typedef logic [3:0] cache_type;
    // AXI Transaction Prot Type
    typedef logic [2:0] prot_type;
    // AXI Transaction QoS Type
    typedef logic [3:0] qos_type;
    // AXI Transaction Region Type
    typedef logic [3:0] region_type;
    // AXI Transaction Response Type
    typedef logic [1:0] resp_type;

endpackage : axi_pack