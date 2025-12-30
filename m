Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E38B1F3BA4
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767126834; cv=none; b=kq1FlWO/8LWtsuBaBQEKbdmcd3UYfLu/Hr/MokY3tDoqWePj6vA729+2Y+0CMj8i3lK3Ux19V6hj1RItgSwIEniWwrtaIt6Fd9P9fSK8p6d1mGGrgCiOI4t0TitJI4+2cMHClJV8ivfDJA35HwOq3s5jvD1v0/JuqzMuJsdGXq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767126834; c=relaxed/simple;
	bh=XV+wESxPfY/fRODFt/LaDsqdXaKNGXs+jhA5zwQxa04=;
	h=To:Subject:From:Message-Id:Date; b=Y4R4yVpEiywF14s0bmovn0Th5ME7euMvJahV9Kg2woZ5qz3tuSDtLEdZ+pj9SLXRaMKBESj2yZTwHlmB0rfcsAeqsMO6Rgdl5ZmQ1lxHa4gtnNZe25IpPrdVuvMGFFnuYqO0qiO7DkrrZCrgVcd6y8l9qRVtv5m+hkx9e8mjoPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwX4fmhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwX4fmhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF41C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767126833;
	bh=XV+wESxPfY/fRODFt/LaDsqdXaKNGXs+jhA5zwQxa04=;
	h=To:Subject:From:Date:From;
	b=SwX4fmhYwBpI3z36jaCMBxcKY+irMK4k0uNj1/ORNvYHfRHgpOXSzWkZJps7ngYfZ
	 BLdAHMaL3QWi2UnWAO5XW2lZO2poc4dkyOycoW3n8RF6k3TTicHKbZM0Xnxxd+7Jcq
	 oI16txXIt72SYHo7rMQdHyq3cdDXGnCqYxGPsaYV3t3h+EDPrLceULYH/rw2WfNY7W
	 YNgmRpVqiyL1kOykq5wEYvonbjTCWHrziIXD4vy474PnAQDFZYv01KGj8X/bNzsjKG
	 39FsxPMWlXsmJeQFf1KXwOX/yvOzJt1W/Q7Mhtif+yPU184wOtTWjWYVjjdyGG/M7B
	 MtowdRMko8mJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901A2EE49B4
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176712683357.8439.6290524573735199919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a05b090ee6e021b459ca31bb3229e4fce00ff09d34d59d26ddbeb47f7bed676
Date: Tue, 30 Dec 2025 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767126833
