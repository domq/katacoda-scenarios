curl https://install.meteor.com/ | env HOME=/root sh -x
su -l scrapbook
rm -rf tutorial
meteor create tutorial
cd tutorial
meteor
