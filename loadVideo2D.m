function v=loadVideo2D(filename)
obj = VideoReader(strcat(filename,'.mp4'));
v.filename=filename;
v.fps=obj.FrameRate;
video = obj.read();
v.video=video;
v.obj=obj;
save(strcat(filename,'.mat'),'v');
end