var AllProjects = React.createClass({
	
	getInitialState() {
		return { projects: [] }
	},

	componentDidMount() {
		$.getJSON('/api/v1/projects.json', (response) => {this.setState({ projects: response }) });
	},

	render(){
		return( 
		  <div className="container">
		    <div className="slider">
		      <ul>
				 {this.state.projects.map(function(project){
		            return <li className="" key={project.id}><img className="img-responsive" src={project.url}/></li>;
		          })}
				</ul>
				  <button className="prev">prev</button>
  				  <button className="next">next</button>
			</div>
		  </div>
		)

	}
});

