extends Control

const subject_lines:Array[String] = [
  "Project Alpha - Status Update",
  "Q3 Performance Review - Preliminary Data",
  "Re: Meeting Notes - Oct 26th",
  "FW: Client Proposal - Draft 3",
  "Request for Information - Vendor X",
  "Invoice #20231027 - Follow Up",
  "Shipping Confirmation - Order #A1B2C3",
  "Potential Collaboration - Initial Inquiry",
  "Quick Question - Regarding Budget",
  "FYI: Industry News - Automation Trends",
  "Re: Contract Negotiations - Next Steps",
  "Action Required: System Update",
  "Reminder: Team Meeting - Tuesday",
  "Project Beta - Timeline Adjustment",
  "Feedback Request - Website Redesign",
  "Issue Report - Server Downtime",
  "New Feature Announcement - Platform X",
  "Customer Support Ticket #12345 - Resolved",
  "Re: Marketing Campaign - Performance Metrics",
  "FW: Upcoming Conference - Registration Details",
  "Team Meeting Agenda - Nov 2nd",
  "Department Update - Q4 Planning",
  "HR Announcement - Policy Change",
  "IT Support Request - Network Connectivity",
  "Office Closure Notice - Holiday Schedule",
  "Training Opportunity - Project Management",
  "Performance Review - Self-Assessment",
  "Vacation Request - John Smith",
  "Internal Memo - Confidential",
  "Re: Project Gamma - Kickoff Meeting",
  "Exclusive Offer - Limited Time Only",
  "New Product Launch - Sneak Peek",
  "Upcoming Webinar - Register Now",
  "Content Offer - Download Your Free Guide",
  "Case Study - Client Success Story",
  "Newsletter - November Edition",
  "Special Discount - For Our Valued Customers",
  "Re: Lead Generation - Follow Up",
  "Event Invitation - Industry Summit",
  "Free Trial - Product Demo",
  "Introduction - Connecting on LinkedIn",
  "Job Application - Marketing Manager",
  "Interview Invitation - Initial Screening",
  "Follow Up - After Interview",
  "Referral - Jane Doe",
  "Seeking Advice - Career Development",
  "Collaboration Opportunity - Project Proposal",
  "Event Invitation - Networking Mixer",
  "Thank You - For Your Time",
  "Re: Connecting - Business Opportunity",
]

@onready var item_list:ItemList = $"ScrollContainer/ItemList"
@onready var search_box:TextEdit = $"SearchBox"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
  for line in subject_lines:
    item_list.add_item(line)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
  pass


func _on_search_box_text_changed() -> void:
  item_list.clear()
  for line in subject_lines:
    if line.to_lower().contains(search_box.text.to_lower()):
      item_list.add_item(line)
