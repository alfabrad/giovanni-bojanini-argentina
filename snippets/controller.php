<?php
if ( !empty( $action ) )
{
    $data      = array();
    try
    {
        switch ( $action )
        {
            case 'contact':
                $sessionHandler = ACTUAL_PATH . DIRECTORY_SEPARATOR . 'config' . DIRECTORY_SEPARATOR . 'session-handler.php';
                require_once $sessionHandler;

                $data[ "form_id" ]      = stripslashes ( strip_tags( trim( $_POST[ 'form_id' ] ) ) );
                $data[ "first_name" ]   = stripslashes ( strip_tags( trim( $_POST[ 'first_name' ] ) ) );
                $data[ "last_name" ]    = stripslashes ( strip_tags( trim( $_POST[ 'last_name' ] ) ) );
                $data[ "email" ]        = stripslashes ( strip_tags( trim( $_POST[ 'email' ] ) ) );
                $data[ "city" ]         = stripslashes ( strip_tags( trim( $_POST[ 'city' ] ) ) );
                $data[ "phone" ]         = stripslashes ( strip_tags( trim( $_POST[ 'phone' ] ) ) );
                $data[ "message" ]      = stripslashes ( strip_tags( trim( $_POST[ 'message' ] ) ) );

                $locationSuccess    = SITE_URL . 'gracias';
                switch ( $data[ "form_id" ] ) {
                    case 'mujer':
                        $locationFail       = SITE_URL . 'mujer';
                        break;
                    case 'hombre':
                        $locationFail       = SITE_URL . 'hombre';
                        break;
                    case 'generico':
                    default:
                        $locationFail       = SITE_URL;
                        break;
                }

                /*
                $cc = array(
                    array( 'mail'  => 'jesus.garciav@me.com', 'name'  => 'Jesús' )
                );
                */
                $cc = array();

                $bcc = array(
                    array(
                        'mail'  => $config[ 'emailBCC' ][ 'email_address_one' ],
                        'name'  => $config[ 'emailBCC' ][ 'email_name_one' ]
                    ),
                    array(
                        'mail'  => $config[ 'emailBCC' ][ 'email_address_two' ],
                        'name'  => $config[ 'emailBCC' ][ 'email_name_two' ]
                    )
                );

                $rules      = array(
                                'form_id' => array(
                                    'requerido' => 1,
                                    'validador' => 'esAlfaNumerico',
                                    'mensaje'   => utf8_encode( 'El ID del formulario es obligatorio.' )
                                ),
                                'first_name' => array(
                                    'requerido' => 1,
                                    'validador' => 'esAlfaNumerico',
                                    'mensaje'   => utf8_encode( 'La primera pregunta es obligatoria.' )
                                ),
                                'last_name' => array(
                                    'requerido' => 1,
                                    'validador' => 'esAlfaNumerico',
                                    'mensaje'   => utf8_encode( 'La segunda pregunta es obligatoria.' )
                                ),
                                'email'     => array(
                                    'requerido' => 1,
                                    'validador' => 'esEmail',
                                    'mensaje'   => utf8_encode( 'La tercera pregunta es obligatoria.' )
                                ),
                                'city' => array(
                                    'requerido' => 1,
                                    'validador' => 'esAlfaNumerico',
                                    'mensaje'   => utf8_encode( 'La cuarta pregunta es obligatoria.' )
                                ),
                                'phone' => array(
                                    'requerido' => 1,
                                    'validador' => 'esNumerico',
                                    'mensaje'   => utf8_encode( 'La quinta pregunta es obligatoria.' )
                                ),
                                'message' => array(
                                    'requerido' => 1,
                                    'validador' => 'esAlfaNumerico',
                                    'mensaje'   => utf8_encode( 'La sexta pregunta es obligatoria.' )
                                )
                            );
                $config = Common::getConfig();

                $formValidated  = new Validator( $data, $rules );
                if ( $formValidated->validate() )
                {
                    $data[ "date_answer" ]      = date( "Y-m-d H:i:s" );

                    $contact   = new Contact( $dbh, $config['database']['db_table'] );
                    $contact->setTemplate( "share.tpl" );
                    $contact->setSubject( "Recuperá mas que el pelo" );
                    $contact->setCorreo( $config['mail_service']['receiver_mail'] );
                    $contact->setBCC( $bcc );

                    $contact->setInfo( $data );
                    $userSaved    = $contact->insertInfo( $formValidated );

                    if ( $userSaved )
                    {
                        $response = $contact->sendEmail( );
                        $_SESSION[ 'email' ]    = $data[ "email" ];
                        $_SESSION[ 'template' ] = $data[ "form_id" ];
                        header( 'Location: ' . $locationSuccess );
                    }
                    else
                    {
                        header( 'Location: ' . $locationFail );
                    }
                }
                else
                {
                    header( 'Location: ' . $locationFail );
                }
                break;
            default:
                header( 'Location: ' . $locationFail );
                break;
        }
        echo $data;
    }
    catch ( Exception $e )
    {
        switch ( $e->getCode() )
        {
            case 5910 :
                echo 'DATA BASE ERROR: '.$e->getMessage();
                $message = 'Lo sentimos, ocurrió un error inesperado al tratar de guardar los datos.';
                break;
            case 5810 :
                echo 'MAILER ERROR: '. $e->getMessage();
                $message = 'Lo sentimos, ocurrió un error inesperado al tratar de enviar el correo.';
                break;
            default : $message = $e->getMessage();
        }
        $data = array( 'response' => false , 'message' => $message );
        echo json_encode( $data );
    }
}