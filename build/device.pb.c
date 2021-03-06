/* Automatically generated nanopb constant definitions */
/* Generated by nanopb-0.3.9.1 at Tue Oct  2 17:01:52 2018. */

#include "device.pb.h"

/* @@protoc_insertion_point(includes) */
#if PB_PROTO_HEADER_VERSION != 30
#error Regenerate this file with the current version of nanopb generator.
#endif



const pb_field_t Actuator_fields[5] = {
    PB_FIELD(  1, UINT32  , SINGULAR, STATIC  , FIRST, Actuator, minimum_frequency, minimum_frequency, 0),
    PB_FIELD(  2, UINT32  , SINGULAR, STATIC  , OTHER, Actuator, maximum_frequency, minimum_frequency, 0),
    PB_FIELD(  3, UINT32  , SINGULAR, STATIC  , OTHER, Actuator, optimal_frequency, maximum_frequency, 0),
    PB_FIELD(  4, UENUM   , SINGULAR, STATIC  , OTHER, Actuator, type, optimal_frequency, 0),
    PB_LAST_FIELD
};

const pb_field_t Device_fields[8] = {
    PB_FIELD(  1, UINT32  , SINGULAR, STATIC  , FIRST, Device, hardware_version, hardware_version, 0),
    PB_FIELD(  2, UINT32  , SINGULAR, STATIC  , OTHER, Device, bootloader_version, hardware_version, 0),
    PB_FIELD(  3, UINT32  , SINGULAR, STATIC  , OTHER, Device, firmware_version, bootloader_version, 0),
    PB_FIELD(  4, STRING  , SINGULAR, CALLBACK, OTHER, Device, name, firmware_version, 0),
    PB_FIELD(  5, MESSAGE , REPEATED, CALLBACK, OTHER, Device, actuators, name, &Actuator_fields),
    PB_FIELD(  6, STRING  , SINGULAR, CALLBACK, OTHER, Device, bluetooth_id, actuators, 0),
    PB_FIELD(  7, STRING  , SINGULAR, CALLBACK, OTHER, Device, usb_id, bluetooth_id, 0),
    PB_LAST_FIELD
};



/* @@protoc_insertion_point(eof) */
