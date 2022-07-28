// AXI4-Lite Interface
interface AXI4_LITE #(
    parameter int unsigned ADDR_WIDTH = 0,
    parameter int unsigned DATA_WIDTH = 0
);

    // strb is which bytes in the transaction are enabled
    localparam int unsigned STRB_WIDTH = DATA_WIDTH / 8;
    
    typedef logic [ADDR_WIDTH-1:0] addr_type;
    typedef logic [DATA_WIDTH-1:0] data_type;
    typedef logic [STRB_WIDTH-1:0] strb_type;

    // Write Address Channel
    addr_type           awaddr;
    axi_pack::prot_type awprot;
    logic               awvalid;
    logic               awready;

    // Write Data Channel
    data_type           wdata;
    strb_type           wstrb;
    logic               wvalid;
    logic               wready;

    // Write Response Channel
    axi_pack::resp_type bresp;
    logic               bvalid;
    logic               bready;

    // Read Addresss Channel
    addr_t              araddr;
    axi_pack::prot_type arprot;
    logic               arvalid;
    logic               arready;

    // Read Data Channel
    data_t              rdata;
    axi_pack::resp_type rresp;
    logic               rvalid;
    logic               rready;

    modport MASTER (
        // Write Address Channel
        input awready, output awaddr, awprot, awvalid,
        // Write Data Channel
        input wready, output wdata, wstrb, wvalid,
        // Write Response Channel
        input bresp, bvalid, output bready,
        // Read Address Channel
        input arready, output araddr, arprot, arvalid,
        // Read Data Channel
        input rdata, rresp, rvalid, output rready
    );

    modport SLAVE (
        // Write Address Channel
        input awaddr, awprot, awvalid, output awready,
        // Write Data Channel
        input wdata, wstrb, wvalid, output wready,
        // Write Response Channel
        input bready, output bresp, bvalid,
        // Read Address Channel
        input araddr, arprot, arvalid, output arready,
        // Read Data Channel
        input rready, output rdata, rresp, rvalid
    );

endinterface : AXI4_LITE

// Axi4-Stream
interface AXI4_STREAM_BASIC #(
    parameter int unsigned DATA_WIDTH = 0
);

    typedef logic [DATA_WIDTH-1:0] data_type;

    data_type tData;
    logic     tValid;
    logic     tReady;

    modport MASTER (
        input  tReady,
        output tData, tValid
    );

    modport SLAVE (
        input  tData, tValid,
        output tReady
    );
endinterface : AXI4_STREAM_BASIC
