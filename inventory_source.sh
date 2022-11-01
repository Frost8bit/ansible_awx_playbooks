#!/usr/bin/env bash
# id: scripts/trivial-inventory-script.sh

cat << EOF
{
    "all": {
        "hosts": ["web1.example.com", "web2.example.com"]
    },
    "_meta": {
        "hostvars": {
            "web1.example.com": {
                "ansible_user": "rdiscala"
            },
            "web2.example.com": {
                "ansible_user": "rdiscala"
            }
        }
    }
}
EOF
