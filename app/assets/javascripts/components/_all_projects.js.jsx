var AllProjects = React.createClass({
	
	getInitialState() {
		return { projects: [] }
	},

	componentDidMount() {
		$.getJSON('/api/v1/projects.json', (response) => {this.setState({ projects: response }) });
	},
	componentDidUpdate(prevProps, prevState) {
       
	},

	render(){
		return( 
	<div id="myCarousel" className="carousel slide text-center"> 
		<div className="carousel-inner">
				{this.state.projects.map(function(project){
				  if(project.id === 1){
				  	return(
						<div key={project.id} className="active item img-responsive">
							<img src={project.url} alt="" />
						</div> 
					)

				  }
					return(
						<div key={project.id} className="item img-responsive">
							<img src={project.url} alt="" />
						</div> 
					)
				})}
		</div>
		<a className="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a className="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
	</div>
		)

	}
});

