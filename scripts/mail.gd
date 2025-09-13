# NOTE a data class for holding mail information
class_name Mail

var id: int
var sender: String
var recipient: String
var subject: String
var body: String
var is_read: bool = false
var timestamp: int

func _init(id: int, sender: String, recipient: String, subject: String, body: String, timestamp: int):
	self.id = id
	self.sender = sender
	self.recipient = recipient
	self.subject = subject
	self.body = body
	self.timestamp = timestamp
