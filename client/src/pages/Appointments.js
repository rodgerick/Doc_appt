import React from "react";
import { Link } from "react-router-dom";
import { Icon, Table } from "semantic-ui-react";
import useAxiosOnMount from "../hooks/useAxiosOnMount";

const Appointments = () => {
  const { data } = useAxiosOnMount("/api/appointments");

  const renderData = () => {
    return (
      <Table singleLine>
        <Table.Header>
          <Table.Row>
            <Table.HeaderCell>Doctor</Table.HeaderCell>
            <Table.HeaderCell>Patient</Table.HeaderCell>
            <Table.HeaderCell>Patient Sickness</Table.HeaderCell>
            <Table.HeaderCell>Date</Table.HeaderCell>
          </Table.Row>
        </Table.Header>

        <Table.Body>
          {data.map((d) => (
            <Table.Row>
              <Table.Cell>{d.doctor_name}</Table.Cell>
              <Table.Cell>{d.patient_name}</Table.Cell>
              <Table.Cell>{d.patient_sickness}</Table.Cell>
              <Table.Cell>{d.date}</Table.Cell>
              <Table.Cell>
                <Link
                  to={{
                    pathname: `/appointments/edit/${d.id}`,
                    doctor_id: d.doctor_id,
                    patient_id: d.patient_id,
                    patient_name: d.patient_name,
                    doctor_name: d.doctor_name,
                    date: d.date,
                  }}
                >
                  <Icon name="pencil"></Icon>
                </Link>
              </Table.Cell>
            </Table.Row>
          ))}
        </Table.Body>
      </Table>
    );
  };

  return (
    <div>
      <h1>Appointments</h1>
      {renderData()}
    </div>
  );
};

export default Appointments;
