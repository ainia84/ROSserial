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

class it_control {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lastRodaKiri = null;
      this.lastRodaKanan = null;
    }
    else {
      if (initObj.hasOwnProperty('lastRodaKiri')) {
        this.lastRodaKiri = initObj.lastRodaKiri
      }
      else {
        this.lastRodaKiri = 0;
      }
      if (initObj.hasOwnProperty('lastRodaKanan')) {
        this.lastRodaKanan = initObj.lastRodaKanan
      }
      else {
        this.lastRodaKanan = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type it_control
    // Serialize message field [lastRodaKiri]
    bufferOffset = _serializer.int64(obj.lastRodaKiri, buffer, bufferOffset);
    // Serialize message field [lastRodaKanan]
    bufferOffset = _serializer.int64(obj.lastRodaKanan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type it_control
    let len;
    let data = new it_control(null);
    // Deserialize message field [lastRodaKiri]
    data.lastRodaKiri = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [lastRodaKanan]
    data.lastRodaKanan = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kumpulan_msgs/it_control';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60681b7a9d7a45af768b7da63ee97fec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 lastRodaKiri
    int64 lastRodaKanan
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new it_control(null);
    if (msg.lastRodaKiri !== undefined) {
      resolved.lastRodaKiri = msg.lastRodaKiri;
    }
    else {
      resolved.lastRodaKiri = 0
    }

    if (msg.lastRodaKanan !== undefined) {
      resolved.lastRodaKanan = msg.lastRodaKanan;
    }
    else {
      resolved.lastRodaKanan = 0
    }

    return resolved;
    }
};

module.exports = it_control;
