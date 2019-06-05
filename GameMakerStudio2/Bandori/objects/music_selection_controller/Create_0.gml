global.music_selection = Sekaiwa_Koini_Ochiteru
global.music_bpm = 130
song_file_reader("songdata/"+audio_get_name(global.music_selection)+".txt")
room_goto(playfield)