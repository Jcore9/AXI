package axi_pack;
    // AXI Transaction Length Type
    typedef logic [7:0] len_t;
    // AXI Transaction Size Type
    typedef logic [2:0] size_t;
    // AXI Transaction Burst Type
    typedef logic [1:0] burst_t;
    // AXI Transaction Cache Type
    typedef logic [3:0] cache_t;
    // AXI Transaction Prot Type
    typedef logic [2:0] prot_t;
    // AXI Transaction QoS Type
    typedef logic [3:0] qos_t;
    // AXI Transaction Region Type
    typedef logic [3:0] region_t;
    // AXI Transaction Response Type
    typedef logic [1:0] resp_t;

endpackage : axi_pack