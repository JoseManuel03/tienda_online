<!DOCTYPE html>
    <html lang="en">
      <head>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <title>PayPal Standard Payments Integration | Client Demo</title>
      </head>

      <body>
        <div id="paypal-button-container"></div>
        <script src="https://www.paypal.com/sdk/js?client-id=test&currency=MXN&intent=capture&enable-funding=venmo" data-sdk-integration-source="integrationbuilder"></script>
        <script>
          const paypalButtonsComponent = paypal.Buttons({
              style: {
                color: "gold",
                shape: "rect",
                layout: "vertical"
              },

              createOrder: (data, actions) => {
                  const createOrderPayload = {
                      purchase_units: [
                          {
                              amount: {
                                  value: "88.44"
                              }
                          }
                      ]
                  };

                  return actions.order.create(createOrderPayload);
              },

             

              onApprove: (data, actions) => {
                  const captureOrderHandler = (details) => {
                      const payerName = details.payer.name.given_name;
                      window.location.href="completado.html"
                  };

                  return actions.order.capture().then(captureOrderHandler);
              },

              onCancel: (err) => {
                 alert("pago cancelado")
              }
          });

          paypalButtonsComponent
              .render("#paypal-button-container")
              .catch((err) => {
                  console.error('PayPal Buttons failed to render');
              });
        </script>
      </body>
    </html>