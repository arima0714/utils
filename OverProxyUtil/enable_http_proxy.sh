PROXY_PATH="http://proxy.cc.uec.ac.jp:8080/"
export HTTP_PROXY=$PROXY_PATH
export HTTPS_PROXY=$PROXY_PATH
export FTP_PROXY=$PROXY_PATH
export http_proxy=$PROXY_PATH
export https_proxy=$PROXY_PATH

npm -g config set proxy $PROXY_PATH
npm -g config set https-proxy $PROXY_PATH
npm -g config set registry "http://registry.npmjs.org/"

yarn config set proxy $PROXY_PATH -g
yarn config set https-proxy $PROXY_PATH -g

