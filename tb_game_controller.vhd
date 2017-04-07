-----------------------------------
-- Author: Shabbir Hussain
-- Email: shabbir.hussain@mail.mcgill.ca
-- Description: This entity implements the Finite State Machine
--              that will control the game
-----------------------------------

-- Import the necessary libraries
library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;


-- Declare entity
entity tb_game_controller is
end tb_game_controller;

architecture behaviour of tb_game_controller is
	component game_controller is 
	Port ( 
		  clk             : in std_logic; -- Clock for the system
        rst             : in std_logic; -- Resets the state machine

        -- Inputs
        shoot           : in std_logic; -- User shoot
        move_left       : in std_logic; -- User left
        move_right      : in std_logic; -- User right
		  
		  pixel_x         : in integer; -- X position of the cursor
		  pixel_y		   : in integer; -- Y position of the cursor
        
		  -- Outputs
        pixel_color		: out std_logic_vector (2 downto 0)
         
         );
			end component;
			--Inputs 
			signal clk_in : std_logic;
			signal rst_in : std_logic;
			signal shoot_in: std_logic;
			signal move_left_in: std_logic;
			signal move_right_in: std_logic;
			signal pixel_x_in: integer;
			signal pixel_y_in: integer;
			--Outputs
			signal pixel_color_out: std_logic_vector (2 downto 0);
begin
			dut:game_controller
			port map(
			clk=> clk_in,
			rst=> rst_in,
			shoot=> shoot_in,
			move_left=>move_left_in,
			move_right=>move_right_in,
			pixel_x=>pixel_x_in,
			pixel_y=>pixel_y_in,
			pixel_color=>pixel_color_out
			);
			init: process
			begin
			