/* Automatically generated nanopb header */
/* Generated by nanopb-0.3.6-dev at Wed Jun 13 15:07:37 2018. */

#ifndef PB_ZORB_PB_H_INCLUDED
#define PB_ZORB_PB_H_INCLUDED
#include <pb.h>

/* @@protoc_insertion_point(includes) */
#if PB_PROTO_HEADER_VERSION != 30
#error Regenerate this file with the current version of nanopb generator.
#endif

#ifdef __cplusplus
extern "C" {
#endif

/* Struct definitions */
typedef struct {
    pb_callback_t vibrations;
/* @@protoc_insertion_point(struct:timeline_t) */
} timeline_t;

typedef struct {
    bool has_channels;
    uint32_t channels;
    bool has_delay;
    uint32_t delay;
    bool has_duration;
    uint32_t duration;
    bool has_position;
    uint32_t position;
    bool has_start;
    uint32_t start;
    bool has_end;
    uint32_t end;
    bool has_easing;
    uint32_t easing;
/* @@protoc_insertion_point(struct:vibration_t) */
} vibration_t;

/* Default values for struct fields */

/* Initializer values for message structs */
#define TIMELINE_INIT_DEFAULT                    {{{NULL}, NULL}}
#define VIBRATION_INIT_DEFAULT                   {false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0}
#define TIMELINE_INIT_ZERO                       {{{NULL}, NULL}}
#define VIBRATION_INIT_ZERO                      {false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0}

/* Field tags (for use in manual encoding/decoding) */
#define TIMELINE_VIBRATIONS_TAG                  1
#define VIBRATION_CHANNELS_TAG                   1
#define VIBRATION_DELAY_TAG                      2
#define VIBRATION_DURATION_TAG                   3
#define VIBRATION_POSITION_TAG                   4
#define VIBRATION_START_TAG                      5
#define VIBRATION_END_TAG                        6
#define VIBRATION_EASING_TAG                     7

/* Struct field encoding specification for nanopb */
extern const pb_field_t timeline_fields[2];
extern const pb_field_t vibration_fields[8];

/* Maximum encoded size of messages (where known) */
/* TIMELINE_SIZE depends on runtime parameters */
#define VIBRATION_SIZE                           42

/* Message IDs (where set with "msgid" option) */
#ifdef PB_MSGID

#define ZORB_MESSAGES \


#endif

#ifdef __cplusplus
} /* extern "C" */
#endif
/* @@protoc_insertion_point(eof) */

#endif
