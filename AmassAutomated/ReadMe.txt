Hello Guys π

Hope you all are doing well.

Let's talk about this file.

It is using :
  1. the amass to find subdomains.
  2. httprobe to find the alive one.

I just automated it for my own ease.

β How to Use β
βΎ Load the file in Linux.
βΎ Give execution permission by using chmod +x amassautomated.sh

πββοΈ To run πβ
./amassautomated.sh.sh <domain name>

example :
.amassautomated.sh spacex.com

It will create a folder by the same name as your domain. If you are using the example, it will create a folder by name  spacex.com
The results of the search will be in that folder in two files:
1. final.txt -> this file contains all the subdomains find by the amass
2. alive.txt -> this file contains all the active subdomains find by the amss in first step.

πRemember π
First play with it. You can innovate it further for your own ease. π

Thank You
