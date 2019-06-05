///	@function song_file_writer(filename)
///	@description Writes data to a song file.
///	@param filename The file to write to.

/*<FILE START>
TITLE
SONGID
OFFSET
BPM
NOTETYPE
NOTETYPE,NOTEDATA,TIMING*/

global.SONG_file = file_text_open_write(argument0);
file_text_write_string(global.SONG_file,global.SONG_title);
file_text_writeln(global.SONG_file);
file_text_write_real(global.SONG_file,global.SONG_songid);
	file_text_writeln(global.SONG_file);
file_text_write_string(global.SONG_file,global.SONG_offset);
	file_text_writeln(global.SONG_file);
file_text_write_real(global.SONG_file,global.SONG_bpm);
	file_text_writeln(global.SONG_file);
var i=0;
while (global.SONG_note[i]!=0) {
	global.SONG_note[i]=file_text_write_string(global.SONG_file,global.SONG_note[i]);
	file_text_writeln(global.SONG_file);
}
file_text_close(global.SONG_file)