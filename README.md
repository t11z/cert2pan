# cert2pan
Exports certificates used in a Synology NAS to a Palo Alto Networks firewall. Works perfectly with certificates pulled from Let's Encrypt and can be used for any purpose on the Palo Alto Networks firewall (i.e. SSL Inbound Decryption).

## Usage

* Copy cert2pan.sh to any folder on your Synology NAS
* Add firewall IP and API Key in the setup section of the script
* Add execution permissions (`chmod +x cert2pan.sh`)
* Add script in Synology DSM task planner
