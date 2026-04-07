## Emillionaire

I made this for myself and hopefully at least one other unfortunate soul.

I plan to support things that really should have ebuilds but don't.

Contact [Emil](mailto:emil@chud.cyou) for emotional support (greaving widows only, no men, d cup minimum.)

## Configuration

Add to `/etc/portage/repos.conf/emillionaire.conf`

```conf
[emillionaire]
location = /var/db/repos/emillionaire
sync-type = git
sync-uri = https://github.com/8e8m/emillionaire
```

Run after:

```sh
emerge --sync emillionaire
```

You should now be able to emerge things from the overlay.

### A Better Overlay
[Agvxov's overlay](https://bis64wqhh3louusbd45iyj76kmn4rzw5ysawyan5bkxwyzihj67c5lid.onion/anon/agvxov-overlay.git) contains more packages, however it has an outdated version of `dev-build/bake`.

I used Agvxov's overlay as a template to build upon, thanks to him.
