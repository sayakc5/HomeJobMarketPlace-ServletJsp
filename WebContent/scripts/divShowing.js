/**
 * 
 */

function divShowing()
{
	$('#seekercontent').hide();
	$('#sittercontent').hide();
	if($('#selectType').val()=="seeker")
		$('#seekercontent').show();
	else
		$('#sittercontent').show();
};