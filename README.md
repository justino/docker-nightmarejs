:boom: :boom: Notice: No longer maintained, Nightmare.js is no longer maintained :boom: :boom:

---

# docker-nightmarejs

A `node:latest` compiled with `nightmare` support running in `xvfb`.

## Build:

```
docker build -t nightmare:3.0.1 .
```

## Usage:

From your project directory:

```shell
docker run --rm -v $PWD:/workspace nightmare:3.0.1 node <script>
```

### Technical details

- Node is latest from docker hub
- Your script is executed with `Xvfb` running in the background on display `:99.0` at `1280x2000x24`
- If a `package.json` file exists, it will attempt to install any modules needed
