var Work = React.createClass({
	
	getInitialState() {
		return { projects: [] }
	},

	componentDidMount() {
		$.getJSON('/api/v1/projects.json', (response) => {
			debugger
			this.setState({ projects: response }) 
		});
	},

	render(){
		return( 
			<div className="container"> 
				<div className="row">
					{this.state.projects.reverse().map(function(project, index){
						return(
							<div key={index} className="project col-sm-4">
								<a href={project} target="_blank">
								<img className="img-responsive img-clip" src={project} alt="" />
								</a>
							</div> 
						)
					})}
				</div>
			</div>
		)

	}
});
