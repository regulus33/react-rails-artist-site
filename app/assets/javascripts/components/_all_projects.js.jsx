var AllProjects = React.createClass({
	
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
			<div id="myCarousel" className="carousel slide text-center"> 
				<div className="carousel-inner">
					{this.state.projects.map(function(project, index){
						if(index === 8){
							return(
								<div key={index} className="active item img-responsive">
								  <a href={project} target="_blank">
								  	<img src={project} alt="" />
								  </a>
								</div> 
							)
						}
						return(
							<div key={index} className="item img-responsive">
								<a href={project} target="_blank">
									<img src={project} alt="" />
								</a>
							</div> 
						)
					})}
				</div>
					<a id="button-left" className="carousel-control left" href="#myCarousel" data-slide="prev">&#60;</a>
					<a className="carousel-control right" href="#myCarousel" data-slide="next">&#62;</a>
			</div>
		)

	}
});

