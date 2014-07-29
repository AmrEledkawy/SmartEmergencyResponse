classdef WorldState
    %WORLDSTATE Description of everything in the world
    
    properties
        quadcopters         % Vector of structures representing quadcopters
        groundVehicles      % Vector of structures representing ground vehicles
        requests            % Vector of structures representing requests
    end
    
    methods
        function obj = WorldState
            obj.quadcopters = struct('latitude',{},...
                                     'longitude',{},...
                                     'battery',{},...
                                     'cargo',{},...
                                     'route',{},...
                                     'waypoints',{},...     % Indices into requests array
                                     'loadouts',{});
                                 
            obj.groundVehicles = struct('latitude',{},...
                                        'longitude',{});
                                    
            obj.requests = struct('latitude',{},...
                                  'longitude',{},...
                                  'item',{},...
                                  'quantity',{},...
                                  'isDelivery',{},...
                                  'ID',{});  % Requests will get serviced during simulation, so this list will get out of sync with the request manager
        end
    end
end
