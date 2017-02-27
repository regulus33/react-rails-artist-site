var AllProjects = React.createClass({
	
	getInitialState() {
		return { projects: [] }
	},

	componentDidMount() {
		$.getJSON('/api/v1/projects.json', (response) => {this.setState({ projects: response }) });
	},

	render(){
	  var projects = this.state.projects.map((project) => {
		return (
			<div className="col-md-3" key={project.id}>
			  <h3>{project.title}</h3>
			  <p>{project.description}</p>
			  <img className="img-responsive" src={project.url}/>
			</div>
		)
	});

		return(
	        <div>
	            {projects}
	        </div>
	    )

	}
});