[out:json][timeout:25];
// gather results
(
  // Communication towers, masts, and antennas
  node["man_made"~"^(communications_tower|mast|tower|antenna)$"]["country"="DE"]({{bbox}});
  way["man_made"~"^(communications_tower|mast|tower|antenna)$"]["country"="DE"]({{bbox}});
  relation["man_made"~"^(communications_tower|mast|tower|antenna)$"]["country"="DE"]({{bbox}});
  
  // Radio and television transmitters
  node["communication:radio"]({{bbox}});
  node["communication:television"]({{bbox}});
  
  // Broadcast towers and general communication structures
  node["tower:type"~"communication|broadcast|telecommunication"]["country"="DE"]({{bbox}});
  way["tower:type"~"communication|broadcast|telecommunication"]["country"="DE"]({{bbox}});
  relation["tower:type"~"communication|broadcast|telecommunication"]["country"="DE"]({{bbox}});
  
  // Additional communication-related tags
  node["communication"]({{bbox}});
  node["communication:mobile_phone"]({{bbox}});
  node["communication:radio_tower"]({{bbox}});
  
  // Telecom structures
  node["telecom"]({{bbox}});
  way["telecom"]({{bbox}});
  relation["telecom"]({{bbox}});
);
// print results
out body;
>;
out skel qt;
