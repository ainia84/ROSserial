#ifndef _ROS_kumpulan_msgs_it_control_h
#define _ROS_kumpulan_msgs_it_control_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace kumpulan_msgs
{

  class it_control : public ros::Msg
  {
    public:
      typedef int64_t _lastRodaKiri_type;
      _lastRodaKiri_type lastRodaKiri;
      typedef int64_t _lastRodaKanan_type;
      _lastRodaKanan_type lastRodaKanan;

    it_control():
      lastRodaKiri(0),
      lastRodaKanan(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        int64_t real;
        uint64_t base;
      } u_lastRodaKiri;
      u_lastRodaKiri.real = this->lastRodaKiri;
      *(outbuffer + offset + 0) = (u_lastRodaKiri.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_lastRodaKiri.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_lastRodaKiri.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_lastRodaKiri.base >> (8 * 3)) & 0xFF;
      *(outbuffer + offset + 4) = (u_lastRodaKiri.base >> (8 * 4)) & 0xFF;
      *(outbuffer + offset + 5) = (u_lastRodaKiri.base >> (8 * 5)) & 0xFF;
      *(outbuffer + offset + 6) = (u_lastRodaKiri.base >> (8 * 6)) & 0xFF;
      *(outbuffer + offset + 7) = (u_lastRodaKiri.base >> (8 * 7)) & 0xFF;
      offset += sizeof(this->lastRodaKiri);
      union {
        int64_t real;
        uint64_t base;
      } u_lastRodaKanan;
      u_lastRodaKanan.real = this->lastRodaKanan;
      *(outbuffer + offset + 0) = (u_lastRodaKanan.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_lastRodaKanan.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_lastRodaKanan.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_lastRodaKanan.base >> (8 * 3)) & 0xFF;
      *(outbuffer + offset + 4) = (u_lastRodaKanan.base >> (8 * 4)) & 0xFF;
      *(outbuffer + offset + 5) = (u_lastRodaKanan.base >> (8 * 5)) & 0xFF;
      *(outbuffer + offset + 6) = (u_lastRodaKanan.base >> (8 * 6)) & 0xFF;
      *(outbuffer + offset + 7) = (u_lastRodaKanan.base >> (8 * 7)) & 0xFF;
      offset += sizeof(this->lastRodaKanan);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        int64_t real;
        uint64_t base;
      } u_lastRodaKiri;
      u_lastRodaKiri.base = 0;
      u_lastRodaKiri.base |= ((uint64_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_lastRodaKiri.base |= ((uint64_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_lastRodaKiri.base |= ((uint64_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_lastRodaKiri.base |= ((uint64_t) (*(inbuffer + offset + 3))) << (8 * 3);
      u_lastRodaKiri.base |= ((uint64_t) (*(inbuffer + offset + 4))) << (8 * 4);
      u_lastRodaKiri.base |= ((uint64_t) (*(inbuffer + offset + 5))) << (8 * 5);
      u_lastRodaKiri.base |= ((uint64_t) (*(inbuffer + offset + 6))) << (8 * 6);
      u_lastRodaKiri.base |= ((uint64_t) (*(inbuffer + offset + 7))) << (8 * 7);
      this->lastRodaKiri = u_lastRodaKiri.real;
      offset += sizeof(this->lastRodaKiri);
      union {
        int64_t real;
        uint64_t base;
      } u_lastRodaKanan;
      u_lastRodaKanan.base = 0;
      u_lastRodaKanan.base |= ((uint64_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_lastRodaKanan.base |= ((uint64_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_lastRodaKanan.base |= ((uint64_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_lastRodaKanan.base |= ((uint64_t) (*(inbuffer + offset + 3))) << (8 * 3);
      u_lastRodaKanan.base |= ((uint64_t) (*(inbuffer + offset + 4))) << (8 * 4);
      u_lastRodaKanan.base |= ((uint64_t) (*(inbuffer + offset + 5))) << (8 * 5);
      u_lastRodaKanan.base |= ((uint64_t) (*(inbuffer + offset + 6))) << (8 * 6);
      u_lastRodaKanan.base |= ((uint64_t) (*(inbuffer + offset + 7))) << (8 * 7);
      this->lastRodaKanan = u_lastRodaKanan.real;
      offset += sizeof(this->lastRodaKanan);
     return offset;
    }

    const char * getType(){ return "kumpulan_msgs/it_control"; };
    const char * getMD5(){ return "60681b7a9d7a45af768b7da63ee97fec"; };

  };

}
#endif