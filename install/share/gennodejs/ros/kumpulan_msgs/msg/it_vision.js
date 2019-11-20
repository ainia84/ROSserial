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

class it_vision {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.theta = null;
    }
    else {
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type it_vision
    // Serialize message field [theta]
    bufferOffset = _serializer.int64(obj.theta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type it_vision
    let len;
    let data = new it_vision(null);
    // Deserialize message field [theta]
    data.theta = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kumpulan_msgs/it_vision';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '579bfe7466c60f66eac5cf61a80736f3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new it_vision(null);
    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0
    }

    return resolved;
    }
};

module.exports = it_vision;
