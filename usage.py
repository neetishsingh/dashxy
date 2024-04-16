import dashxy
from dash import Dash, callback, html, Input, Output

app = Dash(__name__)

app.layout = html.Div([
    dashxy.Abc(id="id1", label="gu", style={
        "background-color": "blue", "border": "20px"}),

    dashxy.Bca(id="id2", label="gu"),
    html.Div(id='output')
])


# @callback(Output('output', 'children'), Input('input', 'value'))
# def display_output(value):
#     return 'You have entered {}'.format(value)


if __name__ == '__main__':
    app.run_server(debug=True)
