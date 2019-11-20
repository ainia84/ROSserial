#ifndef _ROS_kumpulan_msgs_arduino_it_h
#define _ROS_kumpulan_msgs_arduino_it_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace kumpulan_msgs
{

  class arduino_it : public ros::Msg
  {
    public:
      typedef int64_t _distance_type;
      _distance_type distance;
      typedef int64_t _rpm_type;
      _rpm_type rpm;

    arduino_it():
      distance(0),
      rpm(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        int64_t real;
        uint64_t base;
      } u_distance;
      u_distance.real = this->distance;
      *(outbuffer + offset + 0) = (u_distance.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_distance.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_distance.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_distance.base >> (8 * 3)) & 0xFF;
      *(outbuffer + offset + 4) = (u_distance.base >> (8 * 4)) & 0xFF;
      *(outbuffer + offset + 5) = (u_distance.base >> (8 * 5)) & 0xFF;
      *(outbuffer + offset + 6) = (u_distance.base >> (8 * 6)) & 0xFF;
      *(outbuffer + offset + 7) = (u_distance.base >> (8 * 7)) & 0xFF;
      offset += sizeof(this->distance);
      union {
        int64_t real;
        uint64_t base;
      } u_rpm;
      u_rpm.real = this->rpm;
      *(outbuffer + offset + 0) = (u_rpm.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_rpm.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_rpm.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_rpm.base >> (8 * 3)) & 0xFF;
      *(outbuffer + offset + 4) = (u_rpm.base >> (8 * 4)) & 0xFF;
      *(outbuffer + offset + 5) = (u_rpm.base >> (8 * 5)) & 0xFF;
      *(outbuffer + offset + 6) = (u_rpm.base >> (8 * 6)) & 0xFF;
      *(outbuffer + offset + 7) = (u_rpm.base >> (8 * 7)) & 0xFF;
      offset += sizeof(this->rpm);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        int64_t real;
        uint64_t base;
      } u_distance;
      u_distance.base = 0;
      u_distance.base |= ((uint64_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_distance.base |= ((uint64_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_distance.base |= ((uint64_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_distance.base |= ((uint64_t) (*(inbuffer + offset + 3))) << (8 * 3);
      u_distance.base |= ((uint64_t) (*(inbuffer + offset + 4))) << (8 * 4);
      u_distance.base |= ((uint64_t) (*(inbuffer + offset + 5))) << (8 * 5);
      u_distance.base |= ((uint64_t) (*(inbuffer + offset + 6))) << (8 * 6);
      u_distance.base |= ((uint64_t) (*(inbuffer + offset + 7))) << (8 * 7);
      this->distance = u_distance.real;
      offset += sizeof(this->distance);
      union {
        int64_t real;
        uint64_t base;
      } u_rpm;
      u_rpm.base = 0;
      u_rpm.base |= ((uint64_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_rpm.base |= ((uint64_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_rpm.base |= ((uint64_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_rpm.base |= ((uint64_t) (*(inbuffer + offset + 3))) << (8 * 3);
      u_rpm.base |= ((uint64_t) (*(inbuffer + offset + 4))) << (8 * 4);
      u_rpm.base |= ((uint64_t) (*(inbuffer + offset + 5))) << (8 * 5);
      u_rpm.base |= ((uint64_t) (*(inbuffer + offset + 6))) << (8 * 6);
      u_rpm.base |= ((uint64_t) (*(inbuffer + offset + 7))) << (8 * 7);
      this->rpm = u_rpm.real;
      offset += sizeof(this->rpm);
     return offset;
    }

    const char * getType(){ return "kumpulan_msgs/arduino_it"; };
    const char * getMD5(){ return "7185bd32d30d0999a697641753b76f72"; };

  };

}
#endif