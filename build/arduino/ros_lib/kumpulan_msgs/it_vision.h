#ifndef _ROS_kumpulan_msgs_it_vision_h
#define _ROS_kumpulan_msgs_it_vision_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace kumpulan_msgs
{

  class it_vision : public ros::Msg
  {
    public:
      typedef int64_t _theta_type;
      _theta_type theta;

    it_vision():
      theta(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        int64_t real;
        uint64_t base;
      } u_theta;
      u_theta.real = this->theta;
      *(outbuffer + offset + 0) = (u_theta.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_theta.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_theta.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_theta.base >> (8 * 3)) & 0xFF;
      *(outbuffer + offset + 4) = (u_theta.base >> (8 * 4)) & 0xFF;
      *(outbuffer + offset + 5) = (u_theta.base >> (8 * 5)) & 0xFF;
      *(outbuffer + offset + 6) = (u_theta.base >> (8 * 6)) & 0xFF;
      *(outbuffer + offset + 7) = (u_theta.base >> (8 * 7)) & 0xFF;
      offset += sizeof(this->theta);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        int64_t real;
        uint64_t base;
      } u_theta;
      u_theta.base = 0;
      u_theta.base |= ((uint64_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_theta.base |= ((uint64_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_theta.base |= ((uint64_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_theta.base |= ((uint64_t) (*(inbuffer + offset + 3))) << (8 * 3);
      u_theta.base |= ((uint64_t) (*(inbuffer + offset + 4))) << (8 * 4);
      u_theta.base |= ((uint64_t) (*(inbuffer + offset + 5))) << (8 * 5);
      u_theta.base |= ((uint64_t) (*(inbuffer + offset + 6))) << (8 * 6);
      u_theta.base |= ((uint64_t) (*(inbuffer + offset + 7))) << (8 * 7);
      this->theta = u_theta.real;
      offset += sizeof(this->theta);
     return offset;
    }

    const char * getType(){ return "kumpulan_msgs/it_vision"; };
    const char * getMD5(){ return "579bfe7466c60f66eac5cf61a80736f3"; };

  };

}
#endif