docker run --interactive --rm --tty \
	--volume $PWD:/app \
	--volume $SSH_AUTH_SOCK:/ssh-auth.sock \
	--volume /etc/passwd:/etc/passwd:ro \
	--volume /etc/group:/etc/group:ro \
	--volume /home:/home:ro \
	--volume /tmp:/tmp \
	--user $(id -u):$(id -g) \
	--env SSH_AUTH_SOCK=/ssh-auth.sock \
	stevenklar/composer "$@"
