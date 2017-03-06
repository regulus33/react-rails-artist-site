var Work = React.createClass({
	
	getInitialState() {
		return { projects: [] }
	},

	componentDidMount() {
		$.getJSON('/api/v1/projects.json', (response) => {this.setState({ projects: response }) });
	},

	render(){
		return( 
			<div className="container"> 
				<div className="row">
					{this.state.projects.reverse().map(function(project){
						return(
							<div key={project.id} className="project col-sm-4">
								<a href={project.url} target="_blank">
								<img className="img-responsive img-clip" src={project.url} alt="" />
								</a>
							</div> 
						)
					})}
				</div>
			</div>
		)

	}
});
