# 2048 bit key
my $ssh_key =<<_EOF;
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDeSzYDIoUbkd6E2XfGGajqCp0khaIVUtd
kiLAj2YE9XgO4nX5NGOdxvfYoRhvkBPtQvj+/Ih49d1jtaThCov92PXDZt+PltpbaloZ/Up
h5CW3Xl67WGrX2IlhLdoXyjHjKEYI41361iau3vI2g1IriGbl/XKQNnM5/BvJugWmpF25FY
EwRiCFSKa6Y/roSOpEmJx0LgGbWHqBkYF1dKNvCb82z8G+7LjPufcfRzAYBar977BHqxrB1
De2JTRDjGW+pDf4NtRxbYDfkg7epna7SmlFsRGTbZQ/WH79xlG6F/s3VTGJedsz2sp9KJr2
c0COTXpo3xCqo/dwfhJoKZVvr mallen\@MacBook-Pro-2.local
_EOF

my $rsa_pem =<<_EOF;
-----BEGIN RSA PUBLIC KEY-----
MIIBCgKCAQEA3ks2AyKFG5HehNl3xhmo6gqdJIWiFVLXZIiwI9mBPV4DuJ1+TRjn
cb32KEYb5AT7UL4/vyIePXdY7Wk4QqL/dj1w2bfj5baW2paGf1KYeQlt15eu1hq1
9iJYS3aF8ox4yhGCONd+tYmrt7yNoNSK4hm5f1ykDZzOfwbyboFpqRduRWBMEYgh
UimumP66EjqRJicdC4Bm1h6gZGBdXSjbwm/Ns/Bvuy4z7n3H0cwGAWq/e+wR6saw
dQ3tiU0Q4xlvqQ3+DbUcW2A35IO3qZ2u0ppRbERk22UP1h+/cZRuhf7N1UxiXnbM
9rKfSia9nNAjk16aN8QqqP3cH4SaCmVb6wIDAQAB
-----END RSA PUBLIC KEY-----
_EOF

use Test::More tests => 4;
use Convert::SSH2;

my $c1 = Convert::SSH2->new($ssh_key);

isa_ok($c1, 'Convert::SSH2', 'object with buf constructed');
is($c1->format_output(), $rsa_pem, '2048 bit conversion successful');

#4096 bit key
$ssh_key =<<_EOF;
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDDZ8Pl/prBU09eRwFnFbm4u6aw/p+VQU
sSIOQButUYCLmf61vmgXQLZAKvtsjLqzUmmIl8tyLeJcMdtrdOs7qOBE6yKuZSmd/0fMZu
jMw8GQTFEkateXTQbclRtpiJszFAM0IlcUt531bxlJqRXVHnM6dDO/gyr7OYH49ltZXIgh
Up/83BA1nbJVRL63E7qTZxG+zhYoql1a1tr1WSEKrnIZIv9Ft2HtJ+8RUpaJ/o7XOYVWvE
br4yZ7hSPnN4PiZn8mFfDZpNt9fpnF0oTmXz3TNJe6fqqDM9U1ZlzdSCxuOc281Qd26DvA
dq090L7rc3iyNT+YIkyBfF8cTdMulO51GqDpC91MQ9eZ/vyzznfoxjo/OJKSGq1WgOHhqc
UcU0HVGaq4FvUK7uY0PdCB6C5xWn5YGTtBuZjRqY3GG6L/kZ0B7LFpgBtDVUxCX7rb5H31
xxlzmfiBSNJwgcBlvjfgLAlxpZmElAKlvW/9NCakovCbpF2IOabDatPl8A5ASYUAYgVq5X
/ZSE/DNoQuM+F5p/A/ioVT5e2UD4127ike9x4/Cn4MBZswcy2fTJ4wkkWwZgVDM7+fdGz1
OikUBRIJIm6MSwS3l9XOCLM7yZtleVALL1z6oMm0g3OgQhjMGstP0FOZRMkmgLS0bB4KKk
GL6NmLZFNBMKvIXe/TFcew== mallen\@MacBook-Pro-2.local
_EOF

$rsa_pem =<<_EOF;
-----BEGIN RSA PUBLIC KEY-----
MIICCgKCAgEAw2fD5f6awVNPXkcBZxW5uLumsP6flUFLEiDkAbrVGAi5n+tb5oF0
C2QCr7bIy6s1JpiJfLci3iXDHba3TrO6jgROsirmUpnf9HzGbozMPBkExRJGrXl0
0G3JUbaYibMxQDNCJXFLed9W8ZSakV1R5zOnQzv4Mq+zmB+PZbWVyIIVKf/NwQNZ
2yVUS+txO6k2cRvs4WKKpdWtba9VkhCq5yGSL/Rbdh7SfvEVKWif6O1zmFVrxG6+
Mme4Uj5zeD4mZ/JhXw2aTbfX6ZxdKE5l890zSXun6qgzPVNWZc3UgsbjnNvNUHdu
g7wHatPdC+63N4sjU/mCJMgXxfHE3TLpTudRqg6QvdTEPXmf78s8536MY6PziSkh
qtVoDh4anFHFNB1RmquBb1Cu7mND3QgegucVp+WBk7QbmY0amNxhui/5GdAeyxaY
AbQ1VMQl+62+R99ccZc5n4gUjScIHAZb434CwJcaWZhJQCpb1v/TQmpKLwm6RdiD
mmw2rT5fAOQEmFAGIFauV/2UhPwzaELjPheafwP4qFU+XtlA+Ndu4pHvcePwp+DA
WbMHMtn0yeMJJFsGYFQzO/n3Rs9TopFAUSCSJujEsEt5fVzgizO8mbZXlQCy9c+q
DJtINzoEIYzBrLT9BTmUTJJoC0tGweCipBi+jZi2RTQTCryF3v0xXHsCAwEAAQ==
-----END RSA PUBLIC KEY-----
_EOF

use File::Temp;

my $tmp = File::Temp->new();
print $tmp $ssh_key;
$tmp->close;

my $c2 = Convert::SSH2->new($tmp->filename);

isa_ok($c2, 'Convert::SSH2', 'object with file constructed');
is($c2->format_output(), $rsa_pem, '4096 bit conversion successful');
