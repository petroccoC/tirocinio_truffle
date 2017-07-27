pragma solidity ^0.4.4;

contract Prescriptions {

	struct InfoMedico {
		string name;
		string surname;
	}

	//mapping utente-ruoli
	mapping (address => string) internal roles ;

	//mapping accounts-anagrafica
	mapping (address => InfoMedico) internal medici;
	
	function getRole() public returns (string) {
		return roles[msg.sender];
	}

	function setMedico(string nome, string cognome, string role) public {
		medici[msg.sender] = InfoMedico({
			name : nome,
			surname : cognome
			});
		roles[msg.sender] = role;
	}

	function getMedico() public returns (string, string) {
		return (medici[msg.sender].name, medici[msg.sender].surname);
	}
}