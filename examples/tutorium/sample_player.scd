
q = ();
q.buffer = "/Volumes/DATA/samples/futuremusic213/Dubstep_5/No_FX/" ++ "*".pathMatch
	.collect{ |path| Buffer.read(s, path) };
q.buffer[2].play


(
Tdef(\randomPlayer, {
	inf.do{
		q.buffer[q.buffer.size.rand].play;
		0.25.wait;
	}
}).play

)
Tdef(\randomPlayer).stop