resource "aws_sns_topic" "this" {
  name = "${var.env}-${var.topic_name}"
}
