// Generated by gencpp from file assignment2_part1/last_destinationRequest.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT2_PART1_MESSAGE_LAST_DESTINATIONREQUEST_H
#define ASSIGNMENT2_PART1_MESSAGE_LAST_DESTINATIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace assignment2_part1
{
template <class ContainerAllocator>
struct last_destinationRequest_
{
  typedef last_destinationRequest_<ContainerAllocator> Type;

  last_destinationRequest_()
    {
    }
  last_destinationRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::assignment2_part1::last_destinationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::assignment2_part1::last_destinationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct last_destinationRequest_

typedef ::assignment2_part1::last_destinationRequest_<std::allocator<void> > last_destinationRequest;

typedef boost::shared_ptr< ::assignment2_part1::last_destinationRequest > last_destinationRequestPtr;
typedef boost::shared_ptr< ::assignment2_part1::last_destinationRequest const> last_destinationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::assignment2_part1::last_destinationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::assignment2_part1::last_destinationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace assignment2_part1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::assignment2_part1::last_destinationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::assignment2_part1::last_destinationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment2_part1::last_destinationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment2_part1::last_destinationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment2_part1::last_destinationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment2_part1::last_destinationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::assignment2_part1::last_destinationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::assignment2_part1::last_destinationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::assignment2_part1::last_destinationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "assignment2_part1/last_destinationRequest";
  }

  static const char* value(const ::assignment2_part1::last_destinationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::assignment2_part1::last_destinationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::assignment2_part1::last_destinationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::assignment2_part1::last_destinationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct last_destinationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::assignment2_part1::last_destinationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::assignment2_part1::last_destinationRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ASSIGNMENT2_PART1_MESSAGE_LAST_DESTINATIONREQUEST_H
