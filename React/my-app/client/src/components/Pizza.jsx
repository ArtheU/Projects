import React, { useState } from 'react';
import { Card, Button, Row, Col, Modal, Image } from 'react-bootstrap';

const Pizza = (props) => {
    const[taille, setTaille] = useState('small');
    const[quantite, setQuantite] = useState(1);
    const[show, setShow] = useState(false);

    const handleClose = () => setShow(false);
    const handleShow = () => setShow(true);
  return (
    <>
        <Card style={{width: '18rem', height:'18rem', marginTop:'10%'}}>
            <Card.Img onClick={handleShow} variant='top' src={props.lapizza.image} style={{width:'100%', height:'100%'}}/>
            <Card.Body>
                <Card.Title>{props.lapizza.nom}</Card.Title>
                <Card.Text>
                    <Row>
                        <Col md={6}>
                            <h6>
                                Taille :
                                <select name="" id="" value={taille} onChange={(e) => setTaille(e.target.value)}>
                                    {props.lapizza.tailles.map(taille => (
                                        <option value={taille}>{taille}</option>
                                    ))}
                                </select>
                            </h6>
                        </Col>
                        <Col md={6}>
                            <h6>
                                Quantite : <br />
                                <select name="" id="" value={quantite} onChange={(e) => setQuantite(e.target.value)}>
                                    {[...Array(10).keys()].map((v,i) =>(
                                        <option value={i+1}>{i+1}</option>
                                    ))}
                                </select>
                            </h6>
                        </Col>
                    </Row>
                    <Row>
                        <Col md={6}>
                            Prix : {props.lapizza.prix[0][taille] * quantite} €
                        </Col>
                        <Col md={6}>
                            <Button className='bg-warning text-light'>Add</Button>
                        </Col>
                    </Row>
                </Card.Text>
            </Card.Body>
        </Card>
        <Modal show={show} onHide={handleClose}>
            <Modal.Header closeButton>
                <Modal.Title>{props.lapizza.nom}</Modal.Title>
            </Modal.Header>
            <Modal.Body>
                <Image src={props.lapizza.image} style={{ width:'100%', height:'100%'}}/>
            </Modal.Body>
            <Modal.Footer style={{justifyContent:'flex-start'}}>
                <h6>Description</h6>
                <p>{props.lapizza.description}</p>
            </Modal.Footer>
        </Modal>
    </>
  );
};

export default Pizza