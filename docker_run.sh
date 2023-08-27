docker create --name=hexo-domain.com \
-e HEXO_SERVER_PORT=4000 \
-e GIT_USER="Your Name" \
-e GIT_EMAIL="your.email@domain.tld" \
-v $(pwd):/app \
-p 4000:4000 \
bloodstar/hexo
