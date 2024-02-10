// -----------------------------------------------------------------------------
// Auto-Generated by:        __   _ __      _  __
//                          / /  (_) /____ | |/_/
//                         / /__/ / __/ -_)>  <
//                        /____/_/\__/\__/_/|_|
//                     Build your hardware, easily!
//                   https://github.com/enjoy-digital/litex
//
// Filename   : axis_async_fifo_wrapper_v1_0.v
// Device     : gemini
// LiteX sha1 : --------
// Date       : 2024-02-06 16:49:30
//------------------------------------------------------------------------------
// This file is Copyright (c) 2022 RapidSilicon
//--------------------------------------------------------------------------------

`timescale 1ns / 1ps

//------------------------------------------------------------------------------
// Module
//------------------------------------------------------------------------------

module axis_async_fifo_wrapper #(
	parameter IP_TYPE 		= "ASYNFIFO",
	parameter IP_VERSION 	= 32'h1, 
	parameter IP_ID 		= 32'h4624c5e
)
(    input  wire          s_axis_tvalid,
    input  wire          s_axis_tlast,
    output wire          s_axis_tready,
    input  wire    [7:0] s_axis_tdata,
    input  wire          s_axis_tkeep,
    input  wire    [7:0] s_axis_tid,
    input  wire    [7:0] s_axis_tdest,
    input  wire          s_axis_tuser,
    output wire          m_axis_tvalid,
    output wire          m_axis_tlast,
    input  wire          m_axis_tready,
    output wire    [7:0] m_axis_tdata,
    output wire          m_axis_tkeep,
    output wire    [7:0] m_axis_tid,
    output wire    [7:0] m_axis_tdest,
    output wire          m_axis_tuser,
    output wire          s_status_overflow,
    output wire          s_status_bad_frame,
    output wire          s_status_good_frame,
    output wire          m_status_overflow,
    output wire          m_status_bad_frame,
    output wire          m_status_good_frame,
    input  wire          m_clk,
    input  wire          m_rst,
    input  wire          s_clk,
    input  wire          s_rst
);


//------------------------------------------------------------------------------
// Signals
//------------------------------------------------------------------------------

wire          s_axis_valid;
wire          s_axis_ready;
wire          s_axis_last;
wire    [7:0] s_axis_payload_data;
wire          s_axis_payload_keep;
wire    [7:0] s_axis_param_id;
wire    [7:0] s_axis_param_dest;
wire          s_axis_param_user;
wire          m_axis_valid;
wire          m_axis_ready;
wire          m_axis_last;
wire    [7:0] m_axis_payload_data;
wire          m_axis_payload_keep;
wire    [7:0] m_axis_param_id;
wire    [7:0] m_axis_param_dest;
wire          m_axis_param_user;
wire          fifo_s_status_overflow;
wire          fifo_s_status_bad_frame;
wire          fifo_s_status_good_frame;
wire          fifo_m_status_overflow;
wire          fifo_m_status_bad_frame;
wire          fifo_m_status_good_frame;
wire          fifo_m_clk;
wire          fifo_m_rst;
wire          fifo_s_clk;
wire          fifo_s_rst;

//------------------------------------------------------------------------------
// Combinatorial Logic
//------------------------------------------------------------------------------

assign s_axis_valid = s_axis_tvalid;
assign s_axis_tready = s_axis_ready;
assign s_axis_last = s_axis_tlast;
assign s_axis_payload_data = s_axis_tdata;
assign s_axis_payload_keep = s_axis_tkeep;
assign s_axis_param_id = s_axis_tid;
assign s_axis_param_dest = s_axis_tdest;
assign s_axis_param_user = s_axis_tuser;
assign m_axis_tvalid = m_axis_valid;
assign m_axis_ready = m_axis_tready;
assign m_axis_tlast = m_axis_last;
assign m_axis_tdata = m_axis_payload_data;
assign m_axis_tkeep = m_axis_payload_keep;
assign m_axis_tid = m_axis_param_id;
assign m_axis_tdest = m_axis_param_dest;
assign m_axis_tuser = m_axis_param_user;
assign s_status_overflow = fifo_s_status_overflow;
assign s_status_bad_frame = fifo_s_status_bad_frame;
assign s_status_good_frame = fifo_s_status_good_frame;
assign m_status_overflow = fifo_m_status_overflow;
assign m_status_bad_frame = fifo_m_status_bad_frame;
assign m_status_good_frame = fifo_m_status_good_frame;
assign fifo_m_clk = m_clk;
assign fifo_m_rst = m_rst;
assign fifo_s_clk = s_clk;
assign fifo_s_rst = s_rst;


//------------------------------------------------------------------------------
// Synchronous Logic
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Specialized Logic
//------------------------------------------------------------------------------

axis_async_fifo #(
	.DATA_WIDTH(8),
	.DEPTH(8),
	.DEST_ENABLE(1'd0),
	.DEST_WIDTH(8),
	.DROP_BAD_FRAME(1'd0),
	.DROP_WHEN_FULL(1'd0),
	.FRAME_FIFO(1'd0),
	.ID_ENABLE(1'd0),
	.ID_WIDTH(8),
	.IP_ID(IP_ID),
	.IP_TYPE(IP_TYPE),
	.IP_VERSION(IP_VERSION),
	.KEEP_ENABLE(1'd0),
	.KEEP_WIDTH(1),
	.LAST_ENABLE(1'd1),
	.OUTPUT_FIFO_ENABLE(1'd1),
	.RAM_PIPELINE(2'd2),
	.USER_BAD_FRAME_MASK(1'd1),
	.USER_BAD_FRAME_VALUE(1'd1),
	.USER_ENABLE(1'd1),
	.USER_WIDTH(1)
) axis_async_fifo (
	.m_axis_tready(m_axis_ready),
	.m_clk(fifo_m_clk),
	.m_rst(fifo_m_rst),
	.s_axis_tdata(s_axis_payload_data),
	.s_axis_tdest(s_axis_param_dest),
	.s_axis_tid(s_axis_param_id),
	.s_axis_tkeep(s_axis_payload_keep),
	.s_axis_tlast(s_axis_last),
	.s_axis_tuser(s_axis_param_user),
	.s_axis_tvalid(s_axis_valid),
	.s_clk(fifo_s_clk),
	.s_rst(fifo_s_rst),
	.m_axis_tdata(m_axis_payload_data),
	.m_axis_tdest(m_axis_param_dest),
	.m_axis_tid(m_axis_param_id),
	.m_axis_tkeep(m_axis_payload_keep),
	.m_axis_tlast(m_axis_last),
	.m_axis_tuser(m_axis_param_user),
	.m_axis_tvalid(m_axis_valid),
	.m_status_bad_frame(fifo_m_status_bad_frame),
	.m_status_good_frame(fifo_m_status_good_frame),
	.m_status_overflow(fifo_m_status_overflow),
	.s_axis_tready(s_axis_ready),
	.s_status_bad_frame(fifo_s_status_bad_frame),
	.s_status_good_frame(fifo_s_status_good_frame),
	.s_status_overflow(fifo_s_status_overflow)
);

endmodule

// -----------------------------------------------------------------------------
//  Auto-Generated by LiteX on 2024-02-06 16:49:30.
//------------------------------------------------------------------------------