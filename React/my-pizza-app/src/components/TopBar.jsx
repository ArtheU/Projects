import React from 'react'
import { Navbar, Nav, Container } from 'react-bootstrap';
import LinkContainer from 'react-router-bootstrap';

const TopBar = () => {
  return (
    <Navbar bg='dark' variant='dark' expand='lg'>
        <Container fluid>
            <h6>Dummy Data</h6>
            <Nav className='ms-auto'>
                <LinkContainer>
                    <Nav.Link>Home</Nav.Link>
                </LinkContainer>
                <LinkContainer>
                    <Nav.Link>About Us</Nav.Link>
                </LinkContainer>
                <LinkContainer>
                    <Nav.Link>Contact</Nav.Link>
                </LinkContainer>
                <LinkContainer>
                    <Nav.Link>Terms and Policy</Nav.Link>
                </LinkContainer>
            </Nav>
        </Container>
    </Navbar>
  );
};

export default TopBar;