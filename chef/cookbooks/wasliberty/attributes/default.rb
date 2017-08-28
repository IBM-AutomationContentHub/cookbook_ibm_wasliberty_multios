########################################################
#	  Copyright IBM Corp. 2016, 2017
########################################################

####################
# PRODUCT SETTINGS
####################

# <> List of servers to be stopped
# <md> attribute 'was_liberty/stop_servers',
# <md>          :displayname => 'stop_servers',
# <md>          :description => 'List of servers to be stopped',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['stop_servers'] = ''

# <> List of servers to be started
# <md> attribute 'was_liberty/start_servers',
# <md>          :displayname => 'start_servers',
# <md>          :description => 'List of servers to be started',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

default['was_liberty']['start_servers'] = ''

# <> Flag to remove installation archives after extraction
# <md> attribute 'was_liberty/cleanpackages',
# <md>          :displayname => 'cleanpackages',
# <md>          :description => 'Flag to remove installation archives after extraction',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

default['was_liberty']['cleanpackages'] = false

# <> Temp directory to be used
# <md> attribute 'was_liberty/tmp',
# <md>          :displayname => 'temp_dir',
# <md>          :description => 'Temp directory to be used',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['tmp'] = node['ibm']['temp_dir'] + "/was_liberty"

# <> Liberty install user
# <md> attribute 'was_liberty/install_user',
# <md>          :displayname => 'install_user',
# <md>          :description => 'Liberty install user',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['install_user'] = ''

# <> Liberty install group
# <md> attribute 'was_liberty/install_grp',
# <md>          :displayname => 'install_group',
# <md>          :description => 'Liberty install group',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['install_grp'] = ''

# <> Liberty install dir
# <md> attribute 'was_liberty/install_dir',
# <md>          :displayname => 'install_dir',
# <md>          :description => 'Liberty install dir',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['install_dir'] = ''

# <> Liberty user dir
# <md> attribute 'was_liberty/wlp_user_dir',
# <md>          :displayname => 'wlp_user_dir',
# <md>          :description => 'Liberty directory for user data',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['wlp_user_dir'] = "#{node['was_liberty']['install_dir']}/usr"

# <> IM install dir
# <md> attribute 'was_liberty/im_install_dir',
# <md>          :displayname => 'Installation Manager installation directory',
# <md>          :description => 'The installation root directory for the installation manager product binaries',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['im_install_dir'] = ''

# <> Shared resources location of IBM Installation Manager
# <md> attribute 'was_liberty/im_shared_dir',
# <md>          :displayname => 'Installation Manager shared resources directory',
# <md>          :description => 'The shared resources directory is where installation artifacts are located that can be used by one or more package groups',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['im_shared_dir'] = "/opt/IBM/IMShared"

# <> Create the OS users: 'true' or 'false'
# <md> attribute 'was_liberty/create_os_users',
# <md>          :displayname => 'Create Liberty Installation userid',
# <md>          :description => 'The userid that performs the installation of Liberty should be created',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['create_os_users'] = 'true'

# <> Liberty edition to be installed
# <md> attribute 'was_liberty/edition',
# <md>          :displayname => 'Liberty Edition to be installed',
# <md>          :description => 'Indicates which Liberty offering should be installed. Valid values are: base, core, nd',
# <md>          :type => 'string',
# <md>          :choice => [ 'base',
# <md>                       'core',
# <md>                       'nd' ],
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['edition'] = 'base'
# NOTE: only one value can be set to true
# <> WAS Liberty edition to install and configure
# default['was_liberty']['editions'] = {
#   'base'    => "false",
#   'nd'      => "true",
#   'core'    => "false"
# }

# <> Liberty features to install
# <md> attribute 'was_liberty/features/embeddablecontainer',
# <md>          :displayname => 'embeddablecontainer_feature',
# <md>          :description => 'Liberty embeddablecontainer feature',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/features/liberty',
# <md>          :displayname => 'liberty_feature',
# <md>          :description => 'liberty feature',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['features'] = {
  'embeddablecontainer' => "true",
  'liberty'             => "true"
}

####################
# Liberty Product Installation Settings
####################

# NOTE: only one version should be set to true
# <> Java oferings
# <md> attribute 'was_liberty/sdk/common_ibm_sdk_v8/enable',
# <md>          :displayname => 'Install JDK 8 SDK',
# <md>          :description => 'Indicates that Java 8 SDK version should be installed',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

# <md> attribute 'was_liberty/sdk/common_ibm_sdk_v8/offering_id',
# <md>          :displayname => 'Java 8 SDK installation manager offering id',
# <md>          :description => 'Java SDK installation manager offering ID value',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'com.ibm.java.jdk.v8',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

# <md> attribute 'was_liberty/sdk/common_ibm_sdk_v8/feature',
# <md>          :displayname => 'Java 8 SDK installation manager offering id',
# <md>          :description => 'Java 8 SDK installation manager offering ID value',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'com.ibm.sdk.8',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

# <md> attribute 'was_liberty/sdk/common_ibm_sdk_v71/enable',
# <md>          :displayname => 'Install JDK 7.1 SDK',
# <md>          :description => 'Indicates that Java 7.1 SDK version should be installed',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

# <md> attribute 'was_liberty/sdk/common_ibm_sdk_v71/offering_id',
# <md>          :displayname => 'Java 7.1 SDK installation manager offering id',
# <md>          :description => 'Java 7.1 SDK installation manager offering ID value',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'com.ibm.java.jdk.v71',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

# <md> attribute 'was_liberty/sdk/common_ibm_sdk_v71/feature',
# <md>          :displayname => 'common_ibm_sdk_v71_feature',
# <md>          :description => 'feature name for java common_ibm_sdk_v71',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'com.ibm.sdk.71',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

# <md> attribute 'was_liberty/sdk/websphere_sdk_v80/enable',
# <md>          :displayname => 'Install WebSphere JDK 8 SDK',
# <md>          :description => 'Indicates that WebSphere Liberty Java 8 SDK version should be installed',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

# <md> attribute 'was_liberty/sdk/websphere_sdk_v80/offering_id',
# <md>          :displayname => 'WebSphere Liberty Java 8 SDK installation manager offering id',
# <md>          :description => 'offering _id for java websphere_sdk_v80',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'com.ibm.websphere.liberty.IBMJAVA.v80',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

# <md> attribute 'was_liberty/sdk/websphere_sdk_v80/feature',
# <md>          :displayname => 'websphere_sdk_v80_feature',
# <md>          :description => 'feature name for java websphere_sdk_v80',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'com.ibm.sdk.8',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'


# <md> attribute 'was_liberty/sdk/websphere_sdk_v70/enable',
# <md>          :displayname => 'Install WebSphere Liberty Java 7.0 SDK ',
# <md>          :description => 'Indicates that WebSphere Liberty Java 7.0 SDK version should be installed',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

# <md> attribute 'was_liberty/sdk/websphere_sdk_v70/offering_id',
# <md>          :displayname => 'WebSphere Liberty Java 7.0 SDK installation manager offering id',
# <md>          :description => 'offering _id for java websphere_sdk_v70',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'com.ibm.websphere.liberty.IBMJAVA.v70',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

# <md> attribute 'was_liberty/sdk/websphere_sdk_v70/feature',
# <md>          :displayname => 'websphere_sdk_v70_feature',
# <md>          :description => 'feature name for java websphere_sdk_v70',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'com.ibm.sdk.7',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['sdk'] = {
  'common_ibm_sdk_v8'  => { 'enable' => "true",
                            'offering_id' => "com.ibm.java.jdk.v8",
                            'feature' => "com.ibm.sdk.8" },
  'common_ibm_sdk_v71' => { 'enable' => "false",
                            'offering_id' => "com.ibm.java.jdk.v71",
                            'feature' => "com.ibm.sdk.71" },
  'websphere_sdk_v80'  => { 'enable' => "false",
                            'offering_id' => "com.ibm.websphere.liberty.IBMJAVA.v80",
                            'feature' => "com.ibm.sdk.8" },
  'websphere_sdk_v70'  => { 'enable' => "false",
                            'offering_id' => "com.ibm.websphere.liberty.IBMJAVA.v70",
                            'feature' => "com.ibm.sdk.7" }
}

# <> Liberty version to install
# <md> attribute 'was_liberty/base_version',
# <md>          :displayname => 'Liberty version',
# <md>          :description => 'The release and fixpack level for WebSphere Liberty to be installed. Example formats are 8.5.5.11 or 17.0.0.2',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '17.0.2',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['base_version'] = "17.0.2" # ~ip_checker

# <> Java version to install
# <md> attribute 'was_liberty/java_version',
# <md>          :displayname => 'Java SDK version to be installed',
# <md>          :description => 'The Java SDK version that should be installed with the WebSphere Application Server. Example format is 8.0.4.70',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '8.0',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['java_version'] = "8.0"

# <> Liberty fixpack to install
# <md> attribute 'was_liberty/fixpack',
# <md>          :displayname => 'liberty fixpack version',
# <md>          :description => 'The fixpack version of Liberty that should be isntalled' ,
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['fixpack'] = "" # ~ip_checker

# <> if true, IBM Java will be installed from archives
# <md> attribute 'was_liberty/install_java',
# <md>          :description => 'install_java_flag',
# <md>          :displayname => 'install_java flag',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['install_java'] = "true"

# <> Java fixpack to install
# <md> attribute 'was_liberty/fixpack_java',
# <md>          :displayname => 'java_fixpack_version',
# <md>          :description => 'java fixpack version',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['fixpack_java'] = "" # ~ip_checker

# <> if true, IBM Java fp will be installed
# <md> attribute 'was_liberty/install_javafp',
# <md>          :description => 'install_javafp_flag',
# <md>          :displayname => 'install_javafp flag',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['install_javafp'] = "true"

#################################
# Liberty Server settings
#################################

# <> Force a server restart  even if it is running
# <md> attribute 'was_liberty/force_restart',
# <md>          :description => 'force_restart',
# <md>          :displayname => 'force server restart',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => true,
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['force_restart'] = true

# <> Liberty servers parameters
# <md> attribute 'was_liberty/liberty_servers/server01/name',
# <md>          :description => 'Name of Liberty server to be created',
# <md>          :displayname => 'Name of the initial Liberty server to be created during provisioning',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'defaultServer',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

# <md> attribute 'was_liberty/liberty_servers/server01/jvm_params',
# <md>          :description => 'Liberty server JVM settings',
# <md>          :displayname => 'Set the default JVM heap sizes for the liberty server',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '-Xms256m -Xmx2048m',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none'

# <md> attribute 'was_liberty/liberty_servers/server01/timeout',
# <md>          :description => 'liberty server01 timeout',
# <md>          :displayname => 'liberty_server01_timeout',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '20',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

# <md> attribute 'was_liberty/liberty_servers/server01/httpport',
# <md>          :description => 'Default HTTP Transport Port',
# <md>          :displayname => 'HTTP Transport value that will be set in the defaultHttpEndpoint endpoint in server.xml',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9080',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

# <md> attribute 'was_liberty/liberty_servers/server01/httpsport',
# <md>          :description => 'Secure Default HTTP Transport Port',
# <md>          :displayname => 'Secure HTTP Transport value that will be set in the defaultHttpEndpoint endpoint in server.xml',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9443',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

# <md> attribute 'was_liberty/liberty_servers/server01/feature',
# <md>          :description => 'Liberty features that should be included in the server definition',
# <md>          :displayname => 'Lists the Liberty features that should be included in the feature manager list',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'webProfile-7.0 adminCenter-1.0',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

# <md> attribute 'was_liberty/liberty_servers/server01/keystore_id',
# <md>          :description => 'Liberty keystore id" ,
# <md>          :displayname => 'Keystore id that will be used when setting up the keyStore attribute in the server.xml',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'defaultKeyStore',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

# <md> attribute 'was_liberty/liberty_servers/server01/keystore_password',
# <md>          :description => 'Liberty Keystore password',
# <md>          :displayname => 'Liberty keystore password used to protect the Liberty keystore id',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'true'

# <md> attribute 'was_liberty/liberty_servers/server01/users/admin_user/name',
# <md>          :description => 'Liberty administrative user name',
# <md>          :displayname => 'Administrative console username used for accessing the console',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'admin',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

# <md> attribute 'was_liberty/liberty_servers/server01/users/admin_user/password',
# <md>          :description => 'Liberty administrative user name password',
# <md>          :displayname => 'Password for the Liberty administrative user name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'true'

# <md> attribute 'was_liberty/liberty_servers/server01/users/admin_user/role',
# <md>          :description => 'liberty server01 admin_user role',
# <md>          :displayname => 'liberty_server01_admin_user_role',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'admin',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'

default['was_liberty']['liberty_servers'] = {
  'server01' => { 'name' => "defaultServer",
                  'jvm_params' => "-Xms256m -Xmx2048m",
                  'timeout' => "20",
                  'httpport' => "9080",
                  'httpsport' => "9443",
                  'feature' => "webProfile-7.0 adminCenter-1.0",
                  'keystore_id' => "defaultKeyStore",
                  'keystore_password' => "",
                  'users' => {
                    'admin_user' => {
                      'name' => "admin",
                      'password' => "",
                      'role' => "admin"
                    }
                  }
                }
}

# server farm configuration
# <md> attribute 'was_liberty/farm/webserverhost',
# <md>          :description => 'IBM HTTP hostname',
# <md>          :displayname => 'Fully qualified domain name of the IBM HTTP server',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['farm']['webserverhost'] = ''

# <md> attribute 'was_liberty/farm/webserverPort',
# <md>          :description => 'IBM HTTP Web server port',
# <md>          :displayname => 'HTTP Transport port that the webserver is listening on',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '80',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['farm']['webserverPort'] = '80'

# <md> attribute 'was_liberty/farm/webserverSecurePort',
# <md>          :description => 'IBM HTTP Secure web server port'',
# <md>          :displayname => 'Secure HTTP transport',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9043',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['farm']['webserverSecurePort'] = '9043'

# <md> attribute 'was_liberty/farm/webserverName',
# <md>          :description => 'https web server name',
# <md>          :displayname => 'webserverName',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'websrv',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['farm']['webserverName'] = 'websrv'

# <md> attribute 'was_liberty/farm/httpd_plugins_dir',
# <md>          :description => 'the directory on the web server where the merged plugin will be pushed',
# <md>          :displayname => 'httpd_plugins_dir',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['farm']['httpd_plugins_dir'] = ''

# <md> attribute 'was_liberty/farm/httpd_user',
# <md>          :description => 'the user for pushing the merged plugin file to the web server host',
# <md>          :displayname => 'httpd_user',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['farm']['httpd_user'] = ''

# <md> attribute 'was_liberty/farm/sslKeyringLocation',
# <md>          :description => 'liberty farm ssl Keyring Location',
# <md>          :displayname => 'sslKeyringLocation',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/var/liberty/sslkeyring',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['farm']['sslKeyringLocation'] = '/var/liberty/sslkeyring'

# <md> attribute 'was_liberty/farm/sslStashfileLocation',
# <md>          :description => 'liberty farm ssl Stashfile Location',
# <md>          :displayname => 'sslStashfileLocation',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/var/liberty/stashfile',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['farm']['sslStashfileLocation'] = '/var/liberty/stashfile'

# <md> attribute 'was_liberty/farm/sslCertlabel',
# <md>          :description => 'liberty farm ssl Cert label',
# <md>          :displayname => 'sslCertlabel',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'definedbyuser',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['farm']['sslCertlabel'] = 'definedbyuser'

# <md> attribute 'was_liberty/farm/logFileName',
# <md>          :description => 'liberty farm log File Name',
# <md>          :displayname => 'logFileName',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'serverfarm.log',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['farm']['logFileName'] = "serverfarm.log"

# <md> attribute 'was_liberty/farm/pluginInstallRoot',
# <md>          :description => 'liberty farm plugin Install Root',
# <md>          :displayname => 'pluginInstallRoot',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'plugin_install_root',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['farm']['pluginInstallRoot'] = "plugin_install_root"


# server plugins settings
# <md> attribute 'was_liberty/farm/central_node',
# <md>          :description => 'hotname/IP of the liberty node which will gather and merge the plugins. Leave empty when deploying the central node itself',
# <md>          :displayname => 'central_node',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['farm']['central_node'] = ''

# <md> attribute 'was_liberty/farm/plugins_dir',
# <md>          :description => 'the directory where the generated plugins are stored',
# <md>          :displayname => 'plugins_dir',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['farm']['plugins_dir'] = "#{node['was_liberty']['wlp_user_dir']}/tmp"

# <md> attribute 'was_liberty/farm/mergedplugins_dir',
# <md>          :description => 'the directory where the merged plugins are stored',
# <md>          :displayname => 'mergedplugins_dir',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['farm']['mergedplugins_dir'] = "#{node['was_liberty']['farm']['plugins_dir']}/merged"

# <md> attribute 'was_liberty/farm/plugin_cpy_user',
# <md>          :description => 'the user for pushing the plugins to the central liberty node',
# <md>          :displayname => 'plugin_cpy_user',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['farm']['plugin_cpy_user'] = node['was_liberty']['install_user']

# <md> attribute 'was_liberty/farm/webserverhost',
# <md>          :description => 'hostname/IP of the webserver',
# <md>          :displayname => 'webserverhost',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['farm']['webserverhost'] = ''

# <md> attribute 'ssh/private_key/path',
# <md>          :description => 'the path where the private ssh key will be stored',
# <md>          :displayname => 'private_key_path',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['ssh']['private_key']['path'] = '/root/.ssh/CAMkey.pem'

# <md> attribute 'ssh/private_key/content',
# <md>          :description => 'the content of the private ssh key',
# <md>          :displayname => 'private_key_content',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md>          :secret => 'true'
default['ssh']['private_key']['content'] = ''

