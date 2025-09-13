extends Node

# Each folder is a dictionary: {id: Mail}
var inbox := {}
var junk_mail := {}
var draft := {}
var sent_items := {}
var deleted := {}

var _id_counter: int = 0

func _generate_id() -> int:
	_id_counter += 1
	return _id_counter


func add_mail(sender: String, recipient: String, subject: String, body: String) -> int:
	var id = _generate_id()
	var new_mail = Mail.new(id, sender, recipient, subject, body, Time.get_unix_time_from_system())
	inbox[id] = new_mail
	return id


func get_unread_mails() -> Array[Mail]:
	return inbox.values().filter(func(m): return not m.is_read)


func move_to_deleted(mail_id: int) -> void:
	if inbox.has(mail_id):
		deleted[mail_id] = inbox[mail_id]
		inbox.erase(mail_id)
