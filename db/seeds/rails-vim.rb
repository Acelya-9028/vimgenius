@lesson = Fabricate(:lesson,
          name: 'Rails Vim',
          summary: %q[
            This lesson covers <a href="https://github.com/tpop/vim-rails">rails.vim</a>, a plugin by Tim Pope.
          ],
          directions: %q[
            If you use Rails, rails.vim is a must-know. It greatly simplifies navigation in a Rails app and it gives you many handy shortcuts.
            <p>
            Here's the basic gist of it:
            <p>
            :R is the prefix for your main rails navigation commands.
            <br />
            :RV file_name will do a vertical split
            <br />
            :RS file_name will do a horizontal split
            <br />
            :RT file_name will open the file in a new tab
            <br />
            <br />
            There are commands that will take you to specific directories:
            <br />
            :Rview or Rvi will give you views
            <br/>
            :Rcontroller or Rco will give you controllers
            <br />
            :Rmodel or Rmo will give you models
            <br />
            <br />
            These commands can be paired to create the following:
            <br />
            :RVvi home/index.html would open index.html in a vertical split <br />
            :RSmo user would open user.rb in a horizontal split <br />
            :RTco comments would open comments_controller.rb in a new tab. <br />
            :Rvi users/new.html would open new.html, replacing whatever you have currently open.
            <br /><br />
            :A gives you the "alternate" file for your currently open file. E.g., if you're in a model, and you type :AV, then the spec for that model will open up in a vertical split. Pretty nifty, right?
            <br /><br />
            Ok, I hope you got all that, 'cause here's the quiz.

          ],
          done_message: %q[
            Boom, son! Now you know how to get around Rails with rails.vim. Now go be amazing.
          ]
         )


@level_1_commands = {
  ":RVvi home/index.html.haml" => "Vertical split view home/index.html.haml",
  ":RTco users" => "Open users controller in new tab",
  ":Rfeature users" => "Open users cucumber feature",
  ":RSsteps users" => "Horizontal split cucumber \"users\" steps",
  ":Rmo users" => "Open users model",
  ":RTmo users" => "Open users model in new tab",
  ":RVco comments" => "Vertical split comments controller",
  ":AV"  => "Vertical split alternate file",
  "gf" => "Go to file under cursor"
}



1.upto(1) do |number|
  create_commands(create_level(@lesson, number), instance_variable_get("@level_#{number}_commands"))
end

