// Generated by gencpp from file assignment_2_2024/PlanningResult.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT_2_2024_MESSAGE_PLANNINGRESULT_H
#define ASSIGNMENT_2_2024_MESSAGE_PLANNINGRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace assignment_2_2024
{
template <class ContainerAllocator>
struct PlanningResult_
{
  typedef PlanningResult_<ContainerAllocator> Type;

  PlanningResult_()
    {
    }
  PlanningResult_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::assignment_2_2024::PlanningResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::assignment_2_2024::PlanningResult_<ContainerAllocator> const> ConstPtr;

}; // struct PlanningResult_

typedef ::assignment_2_2024::PlanningResult_<std::allocator<void> > PlanningResult;

typedef boost::shared_ptr< ::assignment_2_2024::PlanningResult > PlanningResultPtr;
typedef boost::shared_ptr< ::assignment_2_2024::PlanningResult const> PlanningResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::assignment_2_2024::PlanningResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::assignment_2_2024::PlanningResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace assignment_2_2024

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::assignment_2_2024::PlanningResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::assignment_2_2024::PlanningResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment_2_2024::PlanningResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment_2_2024::PlanningResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment_2_2024::PlanningResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment_2_2024::PlanningResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::assignment_2_2024::PlanningResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::assignment_2_2024::PlanningResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::assignment_2_2024::PlanningResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "assignment_2_2024/PlanningResult";
  }

  static const char* value(const ::assignment_2_2024::PlanningResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::assignment_2_2024::PlanningResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
;
  }

  static const char* value(const ::assignment_2_2024::PlanningResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::assignment_2_2024::PlanningResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlanningResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::assignment_2_2024::PlanningResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::assignment_2_2024::PlanningResult_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ASSIGNMENT_2_2024_MESSAGE_PLANNINGRESULT_H
