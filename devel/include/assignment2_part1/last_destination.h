// Generated by gencpp from file assignment2_part1/last_destination.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT2_PART1_MESSAGE_LAST_DESTINATION_H
#define ASSIGNMENT2_PART1_MESSAGE_LAST_DESTINATION_H

#include <ros/service_traits.h>


#include <assignment2_part1/last_destinationRequest.h>
#include <assignment2_part1/last_destinationResponse.h>


namespace assignment2_part1
{

struct last_destination
{

typedef last_destinationRequest Request;
typedef last_destinationResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct last_destination
} // namespace assignment2_part1


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::assignment2_part1::last_destination > {
  static const char* value()
  {
    return "6d15e47176edc2b7745ed97161ee1d5f";
  }

  static const char* value(const ::assignment2_part1::last_destination&) { return value(); }
};

template<>
struct DataType< ::assignment2_part1::last_destination > {
  static const char* value()
  {
    return "assignment2_part1/last_destination";
  }

  static const char* value(const ::assignment2_part1::last_destination&) { return value(); }
};


// service_traits::MD5Sum< ::assignment2_part1::last_destinationRequest> should match
// service_traits::MD5Sum< ::assignment2_part1::last_destination >
template<>
struct MD5Sum< ::assignment2_part1::last_destinationRequest>
{
  static const char* value()
  {
    return MD5Sum< ::assignment2_part1::last_destination >::value();
  }
  static const char* value(const ::assignment2_part1::last_destinationRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::assignment2_part1::last_destinationRequest> should match
// service_traits::DataType< ::assignment2_part1::last_destination >
template<>
struct DataType< ::assignment2_part1::last_destinationRequest>
{
  static const char* value()
  {
    return DataType< ::assignment2_part1::last_destination >::value();
  }
  static const char* value(const ::assignment2_part1::last_destinationRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::assignment2_part1::last_destinationResponse> should match
// service_traits::MD5Sum< ::assignment2_part1::last_destination >
template<>
struct MD5Sum< ::assignment2_part1::last_destinationResponse>
{
  static const char* value()
  {
    return MD5Sum< ::assignment2_part1::last_destination >::value();
  }
  static const char* value(const ::assignment2_part1::last_destinationResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::assignment2_part1::last_destinationResponse> should match
// service_traits::DataType< ::assignment2_part1::last_destination >
template<>
struct DataType< ::assignment2_part1::last_destinationResponse>
{
  static const char* value()
  {
    return DataType< ::assignment2_part1::last_destination >::value();
  }
  static const char* value(const ::assignment2_part1::last_destinationResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ASSIGNMENT2_PART1_MESSAGE_LAST_DESTINATION_H
