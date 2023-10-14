Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B9B7E
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 02:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beWmIf7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDA0C433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 02:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697250428;
	bh=ZarmmuHqlFXp/KAUnORq+gA859+IbzbnggbXxYDENH0=;
	h=To:Subject:From:Date:From;
	b=beWmIf7ay/cMz9qHff0fwfGbRmCQSPct1DwYAeNSIqShXalO3L7aE5fAPyYAgOuRM
	 Xd16mCfMNuVNjbHubdCV561k90P6NrpoTtNZO7Cigp0AXZ3Ao07GRwJoS2jWAu3dsZ
	 oO0zXFUgjLWJI29YTRxQybfeXyLRWrCb/nxieOlE7hBzYTXkE0IcGPMg1eml3NVbvR
	 AGTjxCJX7k+bcETFGtXqvSwXR+TwHmbMsT1WJrSPQ8JI28LBxAMJ9ycg2E5iAAWzt/
	 wI+oSMr16VlsMhAVzPnGXhF+czlfcu2e9xL/u6sHEwwO58WF9Wg/0L0Wooxs0AHalz
	 uHU4uFwzT7wjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4627CDB47E
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 02:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169725042867.15156.8568055522743165772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2bb3822114faea42038b4d8daae99fd00a5f562e19ccb5d58aa3e38285a6f46
Date: Sat, 14 Oct 2023 02:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697250428
