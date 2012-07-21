var from;
var to;
var startingAddress;
var startingBorough;
var endingAddress;
var endingBorough;

function setVariables(_from, _to)
{
	from = _from;
	to = _to;
}

function setStartingAddress(_startingAddress, _startingBorough)
{
	startingAddress=_startingAddress;
	startingBorough=_startingBorough;
}

function setEndingAddress(_endingAddress, _endingBorough)
{
	endingAddress=_endingAddress;
	endingBorough=_endingBorough;
	
	console.log(endingAddress);
	console.log(endingBorough);
}

function getStartingAddress()
{
	return startingAddress;
}

function getendingAddress()
{
	return endingAddress;
}

function getFrom()
{
	return from;
}

function getTo()
{
	return to;
}