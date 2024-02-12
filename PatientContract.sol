pragma solidity ^0.5.16;

contract PatientContract {
    // Struct to represent patient data
    struct Patient {
        uint256 patientId;
        uint256 age;
        string gender;
        uint256 dateOfEnrollment;
        string treatmentStatus;
        uint256 daysOnARV;
        string complication1;
        string complication2;
        string complication3;
    }

    // Arrays to store patient records for each country
    Patient[] public patientsMalawi;
    Patient[] public patientsDRC;
    Patient[] public patientsUganda;

    // Event to emit when a patient record is added
    event PatientAdded(uint256 indexed patientId);

    // Function to add a new patient record for Malawi
    function addPatientMalawi(
        uint256 _patientId,
        uint256 _age,
        string memory _gender,
        uint256 _dateOfEnrollment,
        string memory _treatmentStatus,
        uint256 _daysOnARV,
        string memory _complication1,
        string memory _complication2,
        string memory _complication3
    ) public {
        patientsMalawi.push(Patient(
            _patientId,
            _age,
            _gender,
            _dateOfEnrollment,
            _treatmentStatus,
            _daysOnARV,
            _complication1,
            _complication2,
            _complication3
        ));
        emit PatientAdded(_patientId);
    }

    // Function to get the total number of patients for Malawi
    function getTotalPatientsMalawi() public view returns (uint256) {
        return patientsMalawi.length;
    }

    // Function to get the patient data for Malawi by index
    function getPatientMalawi(uint256 _index) public view returns (
        uint256 patientId,
        uint256 age,
        string memory gender,
        uint256 dateOfEnrollment,
        string memory treatmentStatus,
        uint256 daysOnARV,
        string memory complication1,
        string memory complication2,
        string memory complication3
    ) {
        require(_index < patientsMalawi.length, "Index out of range");
        Patient memory patient = patientsMalawi[_index];
        return (
            patient.patientId,
            patient.age,
            patient.gender,
            patient.dateOfEnrollment,
            patient.treatmentStatus,
            patient.daysOnARV,
            patient.complication1,
            patient.complication2,
            patient.complication3
        );
    }

    // Function to update patient data for Malawi
    function updatePatientMalawi(
        uint256 _index,
        uint256 _age,
        string memory _gender,
        uint256 _dateOfEnrollment,
        string memory _treatmentStatus,
        uint256 _daysOnARV,
        string memory _complication1,
        string memory _complication2,
        string memory _complication3
    ) public {
        require(_index < patientsMalawi.length, "Index out of range");
        Patient storage patient = patientsMalawi[_index];
        patient.age = _age;
        patient.gender = _gender;
        patient.dateOfEnrollment = _dateOfEnrollment;
        patient.treatmentStatus = _treatmentStatus;
        patient.daysOnARV = _daysOnARV;
        patient.complication1 = _complication1;
        patient.complication2 = _complication2;
        patient.complication3 = _complication3;
    }

    // Function to delete a patient record for Malawi
    function deletePatientMalawi(uint256 _index) public {
        require(_index < patientsMalawi.length, "Index out of range");
        patientsMalawi[_index] = patientsMalawi[patientsMalawi.length - 1];
        patientsMalawi.pop();
    }

    // Function to add a new patient record for DRC
    function addPatientDRC(
        uint256 _patientId,
        uint256 _age,
        string memory _gender,
        uint256 _dateOfEnrollment,
        string memory _treatmentStatus,
        uint256 _daysOnARV,
        string memory _complication1,
        string memory _complication2,
        string memory _complication3
    ) public {
        patientsDRC.push(Patient(
            _patientId,
            _age,
            _gender,
            _dateOfEnrollment,
            _treatmentStatus,
            _daysOnARV,
            _complication1,
            _complication2,
            _complication3
        ));
        emit PatientAdded(_patientId);
    }

    // Function to get the total number of patients for DRC
    function getTotalPatientsDRC() public view returns (uint256) {
        return patientsDRC.length;
    }

    // Function to get the patient data for DRC by index
    function getPatientDRC(uint256 _index) public view returns (
        uint256 patientId,
        uint256 age,
        string memory gender,
        uint256 dateOfEnrollment,
        string memory treatmentStatus,
        uint256 daysOnARV,
        string memory complication1,
        string memory complication2,
        string memory complication3
    ) {
        require(_index < patientsDRC.length, "Index out of range");
        Patient memory patient = patientsDRC[_index];
        return (
            patient.patientId,
            patient.age,
            patient.gender,
            patient.dateOfEnrollment,
            patient.treatmentStatus,
            patient.daysOnARV,
            patient.complication1,
            patient.complication2,
            patient.complication3
        );
    }

    // Function to update patient data for DRC
    function updatePatientDRC(
        uint256 _index,
        uint256 _age,
        string memory _gender,
        uint256 _dateOfEnrollment,
        string memory _treatmentStatus,
        uint256 _daysOnARV,
        string memory _complication1,
        string memory _complication2,
        string memory _complication3
    ) public {
        require(_index < patientsDRC.length, "Index out of range");
        Patient storage patient = patientsDRC[_index];
        patient.age = _age;
        patient.gender = _gender;
        patient.dateOfEnrollment = _dateOfEnrollment;
        patient.treatmentStatus = _treatmentStatus;
        patient.daysOnARV = _daysOnARV;
        patient.complication1 = _complication1;
        patient.complication2 = _complication2;
        patient.complication3 = _complication3;
    }

    // Function to delete a patient record for DRC
    function deletePatientDRC(uint256 _index) public {
        require(_index < patientsDRC.length, "Index out of range");
        patientsDRC[_index] = patientsDRC[patientsDRC.length - 1];
        patientsDRC.pop();
    }

    // Function to add a new patient record for Uganda
    function addPatientUganda(
        uint256 _patientId,
        uint256 _age,
        string memory _gender,
        uint256 _dateOfEnrollment,
        string memory _treatmentStatus,
        uint256 _daysOnARV,
        string memory _complication1,
        string memory _complication2,
        string memory _complication3
    ) public {
        patientsUganda.push(Patient(
            _patientId,
            _age,
            _gender,
            _dateOfEnrollment,
            _treatmentStatus,
            _daysOnARV,
            _complication1,
            _complication2,
            _complication3
        ));
        emit PatientAdded(_patientId);
    }

    // Function to get the total number of patients for Uganda
    function getTotalPatientsUganda() public view returns (uint256) {
        return patientsUganda.length;
    }

    // Function to get the patient data for Uganda by index
    function getPatientUganda(uint256 _index) public view returns (
        uint256 patientId,
        uint256 age,
        string memory gender,
        uint256 dateOfEnrollment,
        string memory treatmentStatus,
        uint256 daysOnARV,
        string memory complication1,
        string memory complication2,
        string memory complication3
    ) {
        require(_index < patientsUganda.length, "Index out of range");
        Patient memory patient = patientsUganda[_index];
        return (
            patient.patientId,
            patient.age,
            patient.gender,
            patient.dateOfEnrollment,
            patient.treatmentStatus,
            patient.daysOnARV,
            patient.complication1,
            patient.complication2,
            patient.complication3
        );
    }

    // Function to update patient data for Uganda
    function updatePatientUganda(
        uint256 _index,
        uint256 _age,
        string memory _gender,
        uint256 _dateOfEnrollment,
        string memory _treatmentStatus,
        uint256 _daysOnARV,
        string memory _complication1,
        string memory _complication2,
        string memory _complication3
    ) public {
        require(_index < patientsUganda.length, "Index out of range");
        Patient storage patient = patientsUganda[_index];
        patient.age = _age;
        patient.gender = _gender;
        patient.dateOfEnrollment = _dateOfEnrollment;
        patient.treatmentStatus = _treatmentStatus;
        patient.daysOnARV = _daysOnARV;
        patient.complication1 = _complication1;
        patient.complication2 = _complication2;
        patient.complication3 = _complication3;
    }

    // Function to delete a patient record for Uganda
    function deletePatientUganda(uint256 _index) public {
        require(_index < patientsUganda.length, "Index out of range");
        patientsUganda[_index] = patientsUganda[patientsUganda.length - 1];
        patientsUganda.pop();
    }
}
