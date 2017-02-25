var AllProjects = React.createClass({
	
	getInitialState() {
		return { projects: []}
	}

	componentDidMount() {
		console.log("mounted");
		$.getJSON('/api/v1/projects.json', (response) => {this.setState({projects: response})})
	},

	render(){
		return (
			<div>
			  <h3>{project.title}</h3>
			  <p>{project.description}</p>
			  <img src={project.url}/>
			</div>
	}
});