Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD6229AB15
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764936774; cv=none; b=fuamwTghj70PuUuVZi82v+2CQuop1b5LO+kMVdUK5VYGmxxDjWYsNnjk2+Xw4P3m9LJTQMo/BUGTD9dPVaRUNu5oq94v+aHN0G6SnyyjgS2pPcsXelrDgt01E3GCuSmuL57ho/WbFH5G0SnCr2hJSEWaHdH8KK4oJx4be/evzLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764936774; c=relaxed/simple;
	bh=eVPN2GQbNQso1H4ODV4YopahDkwmRFROI+ILilcJV9g=;
	h=To:Subject:From:Message-Id:Date; b=PPqcnIUe6NtQDfunn57MQhpEO4/CZIwQmO6XdX0qhE5OGRzQdLMNI+rjJTTNF5tvs++EfLQjTikmJwzgYHOvl13rCBKIcasClIFikSz/j8+iNatdHVdbWqPUKFitPqZ/U2TF2q5C/DQyrQ7D/W76K3ACUzucW09Tm1ugovu1R7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZl5ek+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZl5ek+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71B0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764936773;
	bh=eVPN2GQbNQso1H4ODV4YopahDkwmRFROI+ILilcJV9g=;
	h=To:Subject:From:Date:From;
	b=jZl5ek+YxurqyWAnYpNUvBg43lzjYqbPehvlGO6/Vs5JpTEOv9fR1YRiL/D24JQKU
	 ietWCioHbZbP1lMCNWauKSU/bPhBHp03tGfF/GPjNg8Uw2j9nmapuJhdvhlvj6gD3Y
	 vqL2zYz2Wmz7orA9j/N0bNaheTySe7176NYu6Y8BhMoH/sFZAqg6AXInklO4A8nqKi
	 gb5nFektOI7p2Tw0FkFn4omyOAz2ainbA1PItiCx3JXnmkc+141NzPC2jG9sRvp8yY
	 QxCEvfvjxFva5WuMXOalI0RuNwkdAzKDXSgzTbpBicVyaKhPp5LTmKXiCfjR+EVEXT
	 otvYrrP6gOG9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D5ED2F7E7
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176493677360.19367.3947820242052317075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f42f20cccf0ccd75cc86ef79c3fb8d02542277dc87485909fbb751a8dc4caad4
Date: Fri, 05 Dec 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764936773
