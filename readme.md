### 安装

1. 将库克隆到本地
```bash
  git clone https://github.com/Kuohao-wu/tapi.git
```

2. 根据你的目录来修改tapi.sh中配置文件引入的绝对路径

3. 根据你的文件目录名软连接到 /usr/local/bin

```bash
  ln -s ~/dirname/tapi.sh /usr/local/bin/tapi
```

4. 配置你的url prefix

```bash
  tapi config 'your url prefix'
```

### 功能说明

支持get，post, put, delte请求
