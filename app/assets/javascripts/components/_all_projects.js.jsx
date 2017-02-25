var AllProjects = React.createClass({
	
	getInitialState() {
		return { projects: [] }
	},

	componentDidMount() {
		$.getJSON('/api/v1/projects.json', (response) => {this.setState({ projects: response }) });
	},

	render(){
		debugger
	  var projects = this.state.projects.map((project) => {
		return (
			<div key={project.id}>
			  <h3>{project.title}</h3>
			  <p>{project.description}</p>
			  <img src={project.url}/>
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