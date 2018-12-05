docker run --interactive --rm --tty \
	--volume $PWD:/app \
	--volume $SSH_AUTH_SOCK:/ssh-auth.sock \
	--volume /etc/passwd:/etc/passwd:ro \
	--volume /etc/group:/etc/group:ro \
	--volume /home:/home:ro \
    --volume /etc/ansible:/etc/ansible \
    --volume /usr/share/ansible:/usr/share/ansible \
    --volume $HOME/.ansible:$HOME/.ansible\
	--user $(id -u):$(id -g) \
    --workdir /app \
	--env SSH_AUTH_SOCK=/ssh-auth.sock \
    --env HCLOUD_TOKEN=7LnTVpV55Rkyo8jlwSDOs3fWMEcdBOiKLWJNL5S56RfW78q3IfM6A516fRDeJEV0 \
	stevenklar/ansible $@
