/* Automatically generated nanopb constant definitions */
/* Generated by nanopb-0.4.0-dev at Wed Sep 19 14:34:44 2018. */

#include "zorb.pb.h"

/* @@protoc_insertion_point(includes) */
#if PB_PROTO_HEADER_VERSION != 30
#error Regenerate this file with the current version of nanopb generator.
#endif



const pb_field_t zorb_Timeline_fields[2] = {
    PB_FIELD(  1, MESSAGE , REPEATED, CALLBACK, FIRST, zorb_Timeline, vibrations, vibrations, &zorb_Vibration_fields),
    PB_LAST_FIELD
};

const pb_field_t zorb_Vibration_fields[8] = {
    PB_FIELD(  1, UINT32  , SINGULAR, STATIC  , FIRST, zorb_Vibration, channels, channels, 0),
    PB_FIELD(  2, UINT32  , SINGULAR, STATIC  , OTHER, zorb_Vibration, delay, channels, 0),
    PB_FIELD(  3, UINT32  , SINGULAR, STATIC  , OTHER, zorb_Vibration, duration, delay, 0),
    PB_FIELD(  4, UINT32  , SINGULAR, STATIC  , OTHER, zorb_Vibration, position, duration, 0),
    PB_FIELD(  5, UINT32  , SINGULAR, STATIC  , OTHER, zorb_Vibration, start, position, 0),
    PB_FIELD(  6, UINT32  , SINGULAR, STATIC  , OTHER, zorb_Vibration, end, start, 0),
    PB_FIELD(  7, UINT32  , SINGULAR, STATIC  , OTHER, zorb_Vibration, easing, end, 0),
    PB_LAST_FIELD
};


/* @@protoc_insertion_point(eof) */