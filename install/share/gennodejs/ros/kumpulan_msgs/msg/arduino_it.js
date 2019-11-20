// Auto-generated. Do not edit!

// (in-package kumpulan_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class arduino_it {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
      this.rpm = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0;
      }
      if (initObj.hasOwnProperty('rpm')) {
        this.rpm = initObj.rpm
      }
      else {
        this.rpm = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type arduino_it
    // Serialize message field [distance]
    bufferOffset = _serializer.int64(obj.distance, buffer, bufferOffset);
    // Serialize message field [rpm]
    bufferOffset = _serializer.int64(obj.rpm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type arduino_it
    let len;
    let data = new arduino_it(null);
    // Deserialize message field [distance]
    data.distance = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rpm]
    data.rpm = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kumpulan_msgs/arduino_it';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7185bd32d30d0999a697641753b76f72';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 distance
    int64 rpm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new arduino_it(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0
    }

    if (msg.rpm !== undefined) {
      resolved.rpm = msg.rpm;
    }
    else {
      resolved.rpm = 0
    }

    return resolved;
    }
};

module.exports = arduino_it;
