# Live streaming nginx-rtmp server.

---

<img src="./images/nginx.png" alt="nginx logo" style="height:50px;"></img>
<img src="./images/docker.png" alt="docker logo" style="height:50px;"></img>

- [Getting Started](#getting-started)
- [Installation](#installation)
- [Start streaming](#start-streaming-using-obs-studio)
- [Watch stream](#watch-live-stream)
- [Conclusion](#conclusion)


## Getting Started

nginx-rtmp server enables you to stream your webcam + screen using any streaming tools like [OBS Studio](https://obsproject.com/). This server uses rtmp + hls for streaming and delivering content over http. We can you `nginx` and add `rmtp` module, but somebody has already created a docker image, hence we are using [tiangolo/nginx-rtmp](https://github.com/tiangolo/nginx-rtmp-docker/tree/master?tab=readme-ov-file) docker image.


## Installation

You can start this streaming server using the provided __docker-compose__ file.

Before running the installation command, make sure you have [Docker](https://www.docker.com/products/docker-desktop) installed on your machine.


### macOS / Windows / Linux

```bash
docker compose up --build
```


## Accessing the server

- Port __1935__ for rtmp server.
- Port __82__ for http. Sample files `index.html` and `error.html` are provided.
- `http://localhost:82/`


### Start streaming using OBS Studio

- go to setting > stream > server
- put the link: `rtmp://localhost:1935/live`
- add a __stream key__ > ok > __start streaming__


### Watch live stream

- use any player with stream support like [VLC](https://www.videolan.org/vlc/).
- put the link: `rtmp://<IP>:1935/live/<stream-key>` to watch stream.


### Conclusion
I found the streaming service like youtube/twitch very interesting. This is just the first step towards building a higly scalable streaming service. Nevertheless, I have to start somewhere, hence this project. In the future I will be adding live transcoding to make the video available in multiple formats (480p, 720p, 1080p, 4k). Then, I will make a player with seeking and downloading features.

List of features I intend to implement:

- [x] Basic streaming server using nginx-rtmp module.
- [x] Dockerize the server.
- [ ] Create a player to play the stream.
- [ ] Add functionality to seek in the player.
- [ ] Add UI to this project.
- [ ] Allow multiple people to stream simultaneously.


<br>

### Connect with me on [linkedin](https://www.linkedin.com/in/akhilhind).





