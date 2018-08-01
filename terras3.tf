
resource "aws_s3_bucket" "adobe-team-test2-bucket" {
  bucket = "adobe-team-test2-bucket"
  acl    = "private"

  tags {
    Name        = "adobe-team-test2-bucket"
    Environment = "Dev"
    Division = "Cloud"
    Owner = "Timothy.Loveridge"
    AppId = "IFX"
    AppRole = "Storage for adobe-team"
    Component = "Storage"
    CreatedBy = "GDT Admin"

  }
}
