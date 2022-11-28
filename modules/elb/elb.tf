resource "aws_lb" "App-alb" {
  name               = "App-LB"
  internal           = false
  load_balancer_type = "application"
  security_groups    = var.websgid
  subnets            = var.pubsubnet
}

resource "aws_lb_target_group" "target-elb" {
  name     = "Alb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

resource "aws_launch_configuration" "instance" {
  name_prefix   = "task-2"
  image_id      = "ami-03952dae43e0a9c63"
  instance_type = "t2.micro"
  security_groups = var.websgid
  associate_public_ip_address = true
}

resource "aws_autoscaling_group" "asg" {
  desired_capacity   = 2
  max_size           = 3
  min_size           = 1
  health_check_grace_period = 300
  vpc_zone_identifier = var.pubsubnet
  launch_configuration = aws_launch_configuration.instance.name
  health_check_type   = "ELB"
}
resource "aws_autoscaling_attachment" "bar" {
  autoscaling_group_name = aws_autoscaling_group.asg.id
  alb_target_group_arn    = aws_lb_target_group.target-elb.arn
}



resource "aws_lb_listener" "App-alb" {
  load_balancer_arn = aws_lb.App-alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target-elb.arn
  }
}