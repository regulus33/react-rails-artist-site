var Main = React.createClass({
	componentDidUpdate(prevProps, prevState) {
        carousel();
	},
    render() {
        return (
            <div>
                <Header />
                <Body />
            </div>
        )
    }
});



