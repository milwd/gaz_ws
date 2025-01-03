// Auto-generated. Do not edit!

// (in-package assignment2_part1.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class last_destinationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type last_destinationRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type last_destinationRequest
    let len;
    let data = new last_destinationRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment2_part1/last_destinationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new last_destinationRequest(null);
    return resolved;
    }
};

class last_destinationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.last_destination_x = null;
      this.last_destination_y = null;
    }
    else {
      if (initObj.hasOwnProperty('last_destination_x')) {
        this.last_destination_x = initObj.last_destination_x
      }
      else {
        this.last_destination_x = 0.0;
      }
      if (initObj.hasOwnProperty('last_destination_y')) {
        this.last_destination_y = initObj.last_destination_y
      }
      else {
        this.last_destination_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type last_destinationResponse
    // Serialize message field [last_destination_x]
    bufferOffset = _serializer.float32(obj.last_destination_x, buffer, bufferOffset);
    // Serialize message field [last_destination_y]
    bufferOffset = _serializer.float32(obj.last_destination_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type last_destinationResponse
    let len;
    let data = new last_destinationResponse(null);
    // Deserialize message field [last_destination_x]
    data.last_destination_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [last_destination_y]
    data.last_destination_y = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment2_part1/last_destinationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d15e47176edc2b7745ed97161ee1d5f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 last_destination_x
    float32 last_destination_y
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new last_destinationResponse(null);
    if (msg.last_destination_x !== undefined) {
      resolved.last_destination_x = msg.last_destination_x;
    }
    else {
      resolved.last_destination_x = 0.0
    }

    if (msg.last_destination_y !== undefined) {
      resolved.last_destination_y = msg.last_destination_y;
    }
    else {
      resolved.last_destination_y = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: last_destinationRequest,
  Response: last_destinationResponse,
  md5sum() { return '6d15e47176edc2b7745ed97161ee1d5f'; },
  datatype() { return 'assignment2_part1/last_destination'; }
};
