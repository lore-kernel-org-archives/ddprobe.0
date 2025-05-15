Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D89295D87
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747280394; cv=none; b=VSNTSsxA7hcgBum6Yj2A3sdTFJ8dqpDyU+UISETXCyMbfIP7U1cKvL+6bNEjefii7al3pb5+dUdYekacO+sEBmPaMm9PMZQsGwZl7k7hYuTDj/qTZXE9VUdr4uO42cnrqIB80ZvRXFqLE7Epwds+eLmDMSmgiTy2wAoTbV9eoZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747280394; c=relaxed/simple;
	bh=o/JbeCjXM0nA7tg61jGRl7jX9DqaAOs9MPG5p4oDpkw=;
	h=To:Subject:From:Message-Id:Date; b=qNHvz0ekaL61VZE5BN8cu5VsYzWyOOd04dwKmy/pTTZDvcT2VPTDCxyTKPcw7yxexPXprLuYn36h2NWwR1WmzP2ssxveskmCy6IAAO7KBB3TvU4Y5DZ1s2L7UR5y4SeEPztAam0ZOnYg7kvD6Zb/oyHfQGLydnMHS/Ri72s0pfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FahSKiXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FahSKiXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1780C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747280393;
	bh=o/JbeCjXM0nA7tg61jGRl7jX9DqaAOs9MPG5p4oDpkw=;
	h=To:Subject:From:Date:From;
	b=FahSKiXTo+kpKDyXuDQiUVlzBhZrk+glOYHKRj1AzUKq1Mo/1EgCHvWq6/ShMExn4
	 MOmPpDOroFt3MEBBcJqOehnQF6ujqSvT2wM4/gmjgsR0nlmVbglPM8LoS8CJ6IQCRC
	 1o0Yj/kKcI7EVQI0+WPVihl9yaUKH3bqMOz5Uifb+9vVkoqdk0Evq8dKttQ/8HiANA
	 xXGv0grLTRxBOXlgsNrVN2/AnuVtmOLV8caUYFDQcy0Bzys6JG7uLs86S2xAYjcXCq
	 0W4xELkpgHA3V7mFVxZ1PWSxkBwwWvAtXFqLfVqrxq6RU9NG9La/etWh9lGqVGBQi9
	 nk+1Z4cG28bgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CEC3ABC3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174728039357.18677.18426361305156679323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064c05cd4d3d7d5977d95f3dbd28371c7955269fcdb83167188bb9970b0b3954
Date: Thu, 15 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747280393
