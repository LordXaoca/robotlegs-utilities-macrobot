/**
 * Author:  Alessandro Bianco
 * Website: http://alessandrobianco.eu
 * Twitter: @alebianco
 * Created: 03/02/2014 10:51
 *
 * Copyright © 2013 Alessandro Bianco
 */
package eu.alebianco.robotlegs.utils.support {
import robotlegs.bender.bundles.mvcs.Command;

public class NamedStringTestCommand extends Command {

    [Inject(name="target")]
    public var who:String;

    [Inject(name="reportingFunction")]
    public var reportingFunc:Function;

    [PostConstruct]
    public function init():void {
        reportingFunc(NamedStringTestCommand)
    }

    override public function execute():void {
        reportingFunc(who)
    }
}
}
