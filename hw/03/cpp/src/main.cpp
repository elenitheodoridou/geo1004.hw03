// some standard libraries that are helpful for reading/writing text files
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <sstream>
#include "Structures.h"
#include "helpstructCGAL.h"
// #include "json.hpp" need to add the json.hpp file


int main() {
  std::string file_in = "orient_weld_openhouse.obj";
  std::string file_in_4 = "output4_guids";
  std::string file_out_nef = "output_nef";

  // ## Read OBJ file ##
  std::ifstream stream_in;
  stream_in.open(file_in);
  // ## Vectors to store elements
  std::vector<Point> vertices;
  std::vector<Object> objects;
  std::cout << stream_in.is_open() << std::endl;
  if (stream_in.is_open()) {
    std::string line;
    while (getline(stream_in, line)) {
      std::istringstream iss(line);
      std::string word;
      iss >> word;
      // ## read the objects ##
      if (word == "g") {
        Object obj;
        while (iss >> word) obj.id = word; // stof: converts string to float
        std::vector<Shell> sh;
        obj.shells = sh;
        objects.push_back(obj);
      }


      // ## read the shells ##
      if (word == "usemtl") {
        Shell sh;
        objects.back().shells.push_back(sh);
      }

      // ## read the vertices ##
      if (word == "v") {
        std::vector<float> coordinates;
        while (iss >> word) coordinates.push_back(std::stof(word)); // stof: converts string to float
        Point p(coordinates[0], coordinates[1], coordinates[2]);
        // for (Point ver: vertices) {
        //   if (ver.x() == coordinates[0] && ver.y() == coordinates[1] && ver.z() == coordinates[2]) {
        //     std::cout << ver << std::endl;
        //   }
        // }
        if (coordinates.size() == 3) vertices.push_back(p);
      }

      // ## read the faces ##
      if (word == "f") {
        std::vector<unsigned long> v;
        while (iss >> word) v.push_back(std::stoi(word)-4); //stoi converts str to int // we also substract 1 bc obj starts at 1 indexing and C++ structures start at 0 indexing
        Face fc = {v};
        if (v.size() == 3) objects.back().shells.back().faces.push_back(fc);
      }
    }
  }

  Polyhedron polyhedron;
  Polyhedron_builder<Polyhedron::HalfedgeDS> polyhedron_builder;
  std::unordered_map<int, int> locverts;
  int locid = 0;
  for (auto const &face: objects.back().shells.back().faces) {
    Face locface;
    for (auto const &globid: face.vertices) {
      locverts.insert({globid, locid});
      locface.vertices.push_back(locverts[globid]);
      locid = locverts.size(); 
      }
    polyhedron_builder.faces.push_back(locface.vertices);
    // int counter = 0;
    // for (auto const &vertex: face.vertices) {

    //   polyhedron_builder.vertices.push_back(...);
    //   polyhedron_builder.faces.back().push_back(...);
    // }
  }
  for (auto&[globid, locid] : locverts) {
    polyhedron_builder.vertices.push_back(vertices[globid]);
  }
  
  polyhedron.delegate(polyhedron_builder);

  
  if (polyhedron.is_closed()) {
    Nef_polyhedron nef_polyhedron(polyhedron); 
    if(nef_polyhedron.is_simple()) {
      Polyhedron P;
      nef_polyhedron.convert_to_polyhedron(P);
      std::ofstream out("temp.nef3");
      out << P;
    }   
  }

  


/*  Nef_polyhedron::Volume_const_iterator current_volume;
  CGAL_forall_volumes(current_volume, big_nef) {
    Nef_polyhedron::Shell_entry_const_iterator current_shell;
    CGAL_forall_shells_of(current_shell, current_volume) {
      Shell_explorer se;
      Nef_polyhedron::SFace_const_handle sface_in_shell(current_shell);
      big_nef.visit_shell_objects(sface_in_shell, se);
      ...
    }
  }*/

  // # writing the geometries to a CityJSON file.
  
  return 0;
}
