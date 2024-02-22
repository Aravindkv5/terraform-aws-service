provider "aws" {
    access_key="AKIAS3R6PPB255MUJVGX"
    secret_key="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"
    region="ap-south-1"
}
resource "aws_instance" "Demo1" {
    ami="ami-03b8a287edc0c1253"
    instance_type="t2.micro"
}
