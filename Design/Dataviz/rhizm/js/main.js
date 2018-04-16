let nodes = [];

function setup() {
  createCanvas(windowWidth, windowHeight);

  // let nodeCount = 5;
  //
  // for (let i = 0; i < nodeCount; i++) {
  //   nodes.push(new Node(i.toString()));
  // }
  //
  // for (let i = 0; i < nodes.length; i++) {
  //   nodes[i].intercourses.push(nodes[(i+1) % nodeCount]);
  //   nodes[(i+1) % nodeCount].intercourses.push(nodes[i]);
  // }

  addIntercourse(1, 2);
  addIntercourse(2, 3);
  addIntercourse(3, 4);
  addIntercourse(4, 1);
}

function draw() {
  background('#FAFAFA');

  noStroke();
  fill('#212121');
  text("FPS: " + round(frameRate()), 20, 20);

  for (let i = 0; i < nodes.length; i++) {
    nodes[i].show();
  }

  for (let i = 0; i < nodes.length; i++) {
    nodes[i].calculateForce();
  }

  for (let i = 0; i < nodes.length; i++) {
    nodes[i].applyForce();
  }
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}

class Node {
  constructor(id) {
    this.id = id;
    this.position = createVector(random(1), random(1));
    this.intercourses = [];
    this.summedForce = createVector(0, 0);
  }

  show() {
    noStroke();
    fill('#212121');
    ellipse(Pos.x(this.position.x), Pos.y(this.position.y), Pos.s(0.01), Pos.s(0.01));
    text(this.id, Pos.x(this.position.x) + 20, Pos.y(this.position.y));

    stroke('#212121');
    for (let i = 0; i < this.intercourses.length; i++) {
      line(Pos.x(this.position.x), Pos.y(this.position.y), Pos.x(this.intercourses[i].position.x), Pos.y(this.intercourses[i].position.y));
    }
  }

  calculateForce() {
    let k = 1 / nodes.length;
    for (let i = 0; i < nodes.length; i++) {
      let force = createVector(0, 0);
      if (nodes[i] != this) {
        let distance = p5.Vector.dist(this.position, nodes[i].position);
        if (this.intercourses.includes(nodes[i])) {
          let intercourseCount = getCountOfObjectInList(nodes[i], this.intercourses);
          let strength = sq(distance) / k * intercourseCount;
          force = p5.Vector.sub(nodes[i].position, this.position).mult(strength);
          stroke('#FF0000');
          line(Pos.x(this.position.x), Pos.y(this.position.y), Pos.x(this.position.x + force.x), Pos.y(this.position.y + force.y));
        } else {
          let strength = sq(k) / distance;
          force = p5.Vector.sub(this.position, nodes[i].position).mult(strength);
          stroke('#0000FF');
          line(Pos.x(this.position.x), Pos.y(this.position.y), Pos.x(this.position.x + force.x), Pos.y(this.position.y + force.y));
        }
      }
      this.summedForce.add(force);
    }

    stroke('#00FF00');
    line(Pos.x(this.position.x), Pos.y(this.position.y), Pos.x(this.position.x + this.summedForce.x), Pos.y(this.position.y + this.summedForce.y));
  }

  applyForce() {
    this.summedForce.mult(1 / nodes.length);
    if (this.summedForce.mag() > 0.5) {
      this.summedForce.normalize().mult(0.5);
    }
    this.position.add(this.summedForce);
  }
}


class Pos {
  static x(relative) {
    return max(windowWidth - windowHeight, 0) / 2 + relative * min(windowWidth, windowHeight);
  }

  static y(relative) {
    return max(windowHeight - windowWidth, 0) / 2 + relative * min(windowWidth, windowHeight);
  }

  static s(relative) {
    return relative * min(windowWidth, windowHeight);
  }
}

function addIntercourse(idA, idB) {
  let a = getOrCreateNode(idA);
  let b = getOrCreateNode(idB);
  a.intercourses.push(b);
  b.intercourses.push(a);
}

function getOrCreateNode(id) {
  for (let i = 0; i < nodes.length; i++) {
    if (nodes[i].id == id) {
      return nodes[i];
    }
  }
  let newNode = new Node(id);
  nodes.push(newNode);
  return newNode;
}

function getCountOfObjectInList(obj, list) {
  let count = 0;
  for (let i = 0; i < list.length; i++) {
    if (list[i] == obj) {
      count++;
    }
  }
  return count;
}

addEventListener("click", function() {
    var el = document.documentElement,
      rfs = el.requestFullscreen
        || el.webkitRequestFullScreen
        || el.mozRequestFullScreen
        || el.msRequestFullscreen
    ;
    rfs.call(el);
});
