package org.assetloader.core 
{
	import flash.events.IEventDispatcher;

	[Event(name="progress", type="flash.events.ProgressEvent")]

	[Event(name="complete", type="flash.events.Event")]

	[Event(name="open", type="flash.events.Event")]

	/**
	 * Instances of ILoader will perform the actual loading of an asset. They only handle one file at a time.
	 * <p>It must dispatch at least these events. <code>Event.OPEN | Event.COMPLETE | ProgressEvent.PROGRESS</code></p>	 * <p>Also maintain it's own instance of ILoadStats</p>
	 * 
	 * @see org.assetloader.loader.AbstractLoader
	 * 
	 * @author Matan Uberstein
	 */
	public interface ILoader extends IEventDispatcher
	{
		/**
		 * Sets the loadUnit.
		 * @param unit ILoadUnit
		 * 
		 * @see org.assetloader.core.ILoadUnit
		 */
		function set loadUnit(unit : ILoadUnit) : void
		/**
		 * Gets the loadUnit.
		 * @return ILoadUnit
		 * 
		 * @see org.assetloader.core.ILoadUnit
		 */
		function get loadUnit() : ILoadUnit

		/**
		 * Gets the current loading stats of loader.
		 * @return ILoadStats
		 * @see org.assetloader.core.ILoadStats
		 */
		function get stats() : ILoadStats

		/**
		 * Starts/resumes the loading operation.
		 */
		function start() : void
		/**
		 * Stops/pauses the loading operation.
		 */
		function stop() : void
		/**
		 * Removes all listeners and destroys references.
		 */
		function destroy() : void

		/**
		 * @return Boolean, true if the load operation was started.
		 */
		function get invoked() : Boolean
		/**
		 * @return Boolean, true if the loading is complete.
		 */
		function get loaded() : Boolean
		/**
		 * @return Data that was returned after loading operation completed.
		 */
		function get data() : *
	}
}
