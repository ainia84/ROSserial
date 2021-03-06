// Generated by gencpp from file kumpulan_msgs/it_vision.msg
// DO NOT EDIT!


#ifndef KUMPULAN_MSGS_MESSAGE_IT_VISION_H
#define KUMPULAN_MSGS_MESSAGE_IT_VISION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kumpulan_msgs
{
template <class ContainerAllocator>
struct it_vision_
{
  typedef it_vision_<ContainerAllocator> Type;

  it_vision_()
    : theta(0)  {
    }
  it_vision_(const ContainerAllocator& _alloc)
    : theta(0)  {
  (void)_alloc;
    }



   typedef int64_t _theta_type;
  _theta_type theta;





  typedef boost::shared_ptr< ::kumpulan_msgs::it_vision_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kumpulan_msgs::it_vision_<ContainerAllocator> const> ConstPtr;

}; // struct it_vision_

typedef ::kumpulan_msgs::it_vision_<std::allocator<void> > it_vision;

typedef boost::shared_ptr< ::kumpulan_msgs::it_vision > it_visionPtr;
typedef boost::shared_ptr< ::kumpulan_msgs::it_vision const> it_visionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kumpulan_msgs::it_vision_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kumpulan_msgs::it_vision_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kumpulan_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'kumpulan_msgs': ['/home/ainiaalif/project_mobil/src/kumpulan_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kumpulan_msgs::it_vision_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kumpulan_msgs::it_vision_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kumpulan_msgs::it_vision_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kumpulan_msgs::it_vision_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kumpulan_msgs::it_vision_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kumpulan_msgs::it_vision_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kumpulan_msgs::it_vision_<ContainerAllocator> >
{
  static const char* value()
  {
    return "579bfe7466c60f66eac5cf61a80736f3";
  }

  static const char* value(const ::kumpulan_msgs::it_vision_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x579bfe7466c60f66ULL;
  static const uint64_t static_value2 = 0xeac5cf61a80736f3ULL;
};

template<class ContainerAllocator>
struct DataType< ::kumpulan_msgs::it_vision_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kumpulan_msgs/it_vision";
  }

  static const char* value(const ::kumpulan_msgs::it_vision_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kumpulan_msgs::it_vision_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 theta\n\
";
  }

  static const char* value(const ::kumpulan_msgs::it_vision_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kumpulan_msgs::it_vision_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.theta);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct it_vision_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kumpulan_msgs::it_vision_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kumpulan_msgs::it_vision_<ContainerAllocator>& v)
  {
    s << indent << "theta: ";
    Printer<int64_t>::stream(s, indent + "  ", v.theta);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KUMPULAN_MSGS_MESSAGE_IT_VISION_H
