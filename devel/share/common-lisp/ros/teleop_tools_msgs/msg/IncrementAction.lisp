; Auto-generated. Do not edit!


(cl:in-package teleop_tools_msgs-msg)


;//! \htmlinclude IncrementAction.msg.html

(cl:defclass <IncrementAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type teleop_tools_msgs-msg:IncrementActionGoal
    :initform (cl:make-instance 'teleop_tools_msgs-msg:IncrementActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type teleop_tools_msgs-msg:IncrementActionResult
    :initform (cl:make-instance 'teleop_tools_msgs-msg:IncrementActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type teleop_tools_msgs-msg:IncrementActionFeedback
    :initform (cl:make-instance 'teleop_tools_msgs-msg:IncrementActionFeedback)))
)

(cl:defclass IncrementAction (<IncrementAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IncrementAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IncrementAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teleop_tools_msgs-msg:<IncrementAction> is deprecated: use teleop_tools_msgs-msg:IncrementAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <IncrementAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_tools_msgs-msg:action_goal-val is deprecated.  Use teleop_tools_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <IncrementAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_tools_msgs-msg:action_result-val is deprecated.  Use teleop_tools_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <IncrementAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_tools_msgs-msg:action_feedback-val is deprecated.  Use teleop_tools_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IncrementAction>) ostream)
  "Serializes a message object of type '<IncrementAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IncrementAction>) istream)
  "Deserializes a message object of type '<IncrementAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IncrementAction>)))
  "Returns string type for a message object of type '<IncrementAction>"
  "teleop_tools_msgs/IncrementAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IncrementAction)))
  "Returns string type for a message object of type 'IncrementAction"
  "teleop_tools_msgs/IncrementAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IncrementAction>)))
  "Returns md5sum for a message object of type '<IncrementAction>"
  "797aeed74214fd3316231275503262ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IncrementAction)))
  "Returns md5sum for a message object of type 'IncrementAction"
  "797aeed74214fd3316231275503262ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IncrementAction>)))
  "Returns full string definition for message of type '<IncrementAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%IncrementActionGoal action_goal~%IncrementActionResult action_result~%IncrementActionFeedback action_feedback~%~%================================================================================~%MSG: teleop_tools_msgs/IncrementActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%IncrementGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: teleop_tools_msgs/IncrementGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32[] increment_by~%~%================================================================================~%MSG: teleop_tools_msgs/IncrementActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%IncrementResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: teleop_tools_msgs/IncrementResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%================================================================================~%MSG: teleop_tools_msgs/IncrementActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%IncrementFeedback feedback~%~%================================================================================~%MSG: teleop_tools_msgs/IncrementFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IncrementAction)))
  "Returns full string definition for message of type 'IncrementAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%IncrementActionGoal action_goal~%IncrementActionResult action_result~%IncrementActionFeedback action_feedback~%~%================================================================================~%MSG: teleop_tools_msgs/IncrementActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%IncrementGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: teleop_tools_msgs/IncrementGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32[] increment_by~%~%================================================================================~%MSG: teleop_tools_msgs/IncrementActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%IncrementResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: teleop_tools_msgs/IncrementResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%================================================================================~%MSG: teleop_tools_msgs/IncrementActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%IncrementFeedback feedback~%~%================================================================================~%MSG: teleop_tools_msgs/IncrementFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IncrementAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IncrementAction>))
  "Converts a ROS message object to a list"
  (cl:list 'IncrementAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
