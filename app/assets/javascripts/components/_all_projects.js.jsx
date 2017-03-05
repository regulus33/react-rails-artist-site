var AllProjects = React.createClass({
	
	getInitialState() {
		return { projects: [] }
	},

	componentDidMount() {
		$.getJSON('/api/v1/projects.json', (response) => {this.setState({ projects: response }) });
	},

	render(){
		return( 
			<div id="myCarousel" className="carousel slide text-center"> 
				<div className="carousel-inner">
					{this.state.projects.map(function(project){
						if(project.id === 1){
							return(
								<div key={project.id} className="active item img-responsive">
								  <a href={project.url} target="_blank">
								  	<img src={project.url} alt="" />
								  </a>
								</div> 
							)
						}
						return(
							<div key={project.id} className="item img-responsive">
								<a href={project.url} target="_blank">
									<img src={project.url} alt="" />
								</a>
							</div> 
						)
					})}
				</div>
				<div className="arrow-backdrop">
					<a className="carousel-control left" href="#myCarousel" data-slide="prev">&#60;</a>
				</div>
				<div className="arrow-backdrop">
					<a className="carousel-control right" href="#myCarousel" data-slide="next">&#62;</a>
				</div>
			</div>
		)

	}
});

