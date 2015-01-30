FROM ubuntu:utopic


RUN apt-get update

RUN apt-get -y install python-wxgtk3.0

RUN apt-get -y install build-essential git git-bzr-ng cmake libgl1-mesa-dev libglew-dev libcairo2-dev libbz2-dev libssl-dev libwebkitgtk-3.0-dev libpython-dev swig2.0 pngcrush doxygen ccache inkscape libwxgtk3.0-dev

RUN mkdir /opt/kicad
RUN cd /opt/kicad
ADD .bashrc-kicad /opt/kicad/.bashrc-kicad

RUN git bzr clone lp:kicad /opt/kicad/kicad-bzr




