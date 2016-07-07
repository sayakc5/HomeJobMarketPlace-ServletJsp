function confirmDelete()
{
	alert("Confirm Alert");
	var answer=confirm("Are You Sure You Want To Delete Your Account?")
	if(answer==true)
		return true;
	else
		return false;
}