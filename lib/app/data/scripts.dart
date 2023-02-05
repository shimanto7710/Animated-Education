
class Scripts{
  static const CUBE_SCRIPT='''
  // alert("Hello! I am an alert box!!");
                    const scene = new THREE.Scene();
                    const camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 0.1, 1000 );
              
                    const renderer = new THREE.WebGLRenderer();
                    renderer.setSize( window.innerWidth, window.innerHeight );
                    document.body.appendChild( renderer.domElement );
              
                    const geometry = new THREE.BoxGeometry( 1, 1, 1 );
                    const material = new THREE.MeshBasicMaterial( { color: 0x00ff00 } );
                    const cube = new THREE.Mesh( geometry, material );
                    scene.add( cube );
              
                    camera.position.z = 5;
              
                    function animate() {
                      requestAnimationFrame( animate );
              
                      cube.rotation.x += 0.01;
                      cube.rotation.y += 0.01;
              
                      renderer.render( scene, camera );
                    };
                          
                    function changeColor(colorCode) {
                            cube.material.color.setHex( colorCode );
                          };
                     
                    animate();
                    // changeColor( 0xffffff );
  ''';

  static const CIRCLE_SCRIPT='''
  // alert("Hello! I am an alert box!!");
                    const scene = new THREE.Scene();
                    const camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 0.1, 1000 );
              
                    const renderer = new THREE.WebGLRenderer();
                    renderer.setSize( window.innerWidth, window.innerHeight );
                    document.body.appendChild( renderer.domElement );
              
                    const geometry = new THREE.BoxGeometry( 1, 1, 1 );
                    const material = new THREE.MeshBasicMaterial( { color: 0x00ff00 } );
                    const cube = new THREE.Line( geometry, material );
                    scene.add( cube );
              
                    camera.position.z = 5;
              
                    function animate() {
                      requestAnimationFrame( animate );
              
                      cube.rotation.x += 0.01;
                      cube.rotation.y += 0.01;
              
                      renderer.render( scene, camera );
                    };
                          
                    function changeColor(colorCode) {
                            cube.material.color.setHex( colorCode );
                          };
                     
                    animate();
  ''';

  static const CUBE_SCRIPT_BUTTON_CHANGE='''
  
  ''';
}