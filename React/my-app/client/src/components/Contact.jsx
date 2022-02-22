import React from 'react';
import { Container, Row, Col, Table, Image } from 'react-bootstrap';
import { BiPhoneCall } from 'react-icons/bi';
import { GiSmartphone } from 'react-icons/gi';
import { AiOutlineMail } from 'react-icons/ai';

const Contact = () => {
  return (
    <>
        <Container style={{marginTop:'50px'}}>
            <Row>
                <Col md={6}>
                    <h1>Pizza Delicious</h1>
                    <h3>Notre Adresse :</h3>
                    <p>103, Rue des Olives noires</p>
                    <p>75021 Paris</p>
                    <p>POUR VOTRE INFORMATION! Nous offrons un service traiteur complet pour tout événement, grand ou petit.
                        Nous comprenons vos besoins et nous préparerons nos plats pour satisfaire les critères les plus importants,
                        à la fois esthétique et gustatifs.
                    </p>
                    <Table striped bordered hover style={{textAlign:'center'}}>
                        <thead>
                            <th colSpan={4} style={{backgroundColor:'orange'}}>--Nos Coordonnées--</th>
                        </thead>
                        <tbody>
                            <tr>
                            <td><BiPhoneCall/></td>
                            <td>Téléphone</td>
                            <td colSpan={2}>01 23 45 67 89</td>
                            </tr>
                            <tr>
                            <td><GiSmartphone/></td>
                            <td>Portable</td>
                            <td colSpan={2}>01 98 76 54 32</td>
                            </tr>
                            <tr>
                            <td><AiOutlineMail/></td>
                            <td>Email</td>
                            <td colSpan={2}>contact@pizza-delicious.com</td>
                            </tr>
                        </tbody>
                    </Table>
                </Col>
                <Col md={6}>
                    <Image src={'/img/farmhouse.jpg'} style={{width:'100%', height:'100%'}} />
                </Col>
            </Row>
        </Container>
    </>
  )
}

export default Contact