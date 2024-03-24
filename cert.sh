!/bin/bash

create_user() {
    username=$1
    password=$2


    sudo useradd -m -s /bin/bash $username


    echo "$username:$password" | sudo chpasswd

}

create_user testing1234 password1

echo 'testing1234  ALL=(ALL:ALL) ALL' >> /etc/sudoers
