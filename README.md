# cert2pan
Exports certificates used in a Synology NAS to a Palo Alto Networks firewall. Works perfectly with certificates pulled from Let's Encrypt and can be used for any purpose on the Palo Alto Networks firewall (i.e. SSL Inbound Decryption).

## Usage

* Copy cert2pan.sh to any folder on your Synology NAS
* Add firewall IP and [API Key](https://docs.paloaltonetworks.com/pan-os/10-0/pan-os-panorama-api/get-started-with-the-pan-os-xml-api/get-your-api-key.html) in the setup section of the script
* Add execution permissions (`chmod +x cert2pan.sh`)
* Add script in Synology DSM task planner
