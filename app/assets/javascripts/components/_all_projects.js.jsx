var AllProjects = React.createClass({
	
	getInitialState() {
		return { projects: [] }
	},

	componentDidMount() {
		$.getJSON('/api/v1/projects.json', (response) => {this.setState({ projects: response }) });
	},
	componentDidUpdate(prevProps, prevState) {
        carousel();
	},

	render(){
		return( 
		  <div className="col-md-6 tex-center">
		    <div className="slider">
		      <ul>
				 {this.state.projects.map(function(project){
		            return <li className="" key={project.id}><img className="img-responsive" src={project.url}/></li>;
		          })}
				</ul>
				  <button className="prev"><p>&#60;</p></button>
  				  <button className="next"><p>&#62;</p></button>
			</div>
		  </div>
		)

	}
});

