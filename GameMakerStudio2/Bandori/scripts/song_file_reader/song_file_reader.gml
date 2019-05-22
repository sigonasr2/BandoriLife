///	@function song_file_reader(filename)
///	@description Reads a song file and creates the appropriate playfield for the song.
///	@param filename The file to read from.

/*<FILE START>
TITLE
SONGID
OFFSET
BPM
NOTETYPE
NOTETYPE,NOTEDATA,TIMING*/

global.SONG_file = file_text_open_read(argument0);
global.SONG_title = file_text_read_string(global.SONG_file);
global.SONG_songid = file_text_read_real(global.SONG_file);
global.SONG_offset = file_text_read_string(global.SONG_file);
global.SONG_bpm = file_text_read_real(global.SONG_file);
if (timeline_exists(global.SONG_timeline)) {
	timeline_clear(global.SONG_timeline);
}
global.SONG_timeline = timeline_add();
var i=0;
while (!file_text_eof(global.SONG_file)) {
	global.SONG_note[i]=file_text_read_string(global.SONG_file);
	str1 = string_copy(global.SONG_note[i],0,string_pos(",",global.SONG_note[i]));
	temp1 = string_copy(global.SONG_note[i],string_pos(",",global.SONG_note[i]),string_length(global.SONG_note[i])-string_pos(",",global.SONG_note[i]));
	str2 = string_copy(str1,0,string_pos(",",str1));
	temp2 = string_copy(str1,string_pos(",",str1),string_length(str1)-string_pos(",",str1));
	str3 = string_copy(str2,0,string_pos(",",str2));
	note = instance_create_layer(0,0,playfield,music_note)
	note.val1=number(str1);
	note.val2=number(str2);
	note.val3=number(str3);
	i+=1;
}