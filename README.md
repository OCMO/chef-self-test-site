# chef-self-test-site
サイトを Chef で管理

作業内容は→ https://gist.github.com/OCMO/c18e11cda22f19aa116e

### EC2 インスタンスを作成し、この Chef を使う場合

node を登録し、
```
$ knife zero bootstrap [IPアドレス] -x ec2-user -i [秘密鍵] --sudo
```
run_list に登録し、
```
"run_list": [
    "recipe[chef-monster-strike-site-init::default]"
  ]
```
cookbook を実行する
```
$ knife zero chef_client 'name:[node名]' --attribute ec2.public_ipv4 -x ec2-user -i [秘密鍵] --sudo
```
