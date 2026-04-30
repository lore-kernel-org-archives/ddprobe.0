Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF23A401A26
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777559253; cv=none; b=FLVciCnZvtg5TrCFCLxXQGm9olnkhplRi0ts/Kx5nnZgMK94h7kBwmnnSRYQkKf2By1F9u0QpjfzRDqo9N3LI772xjJeGSoEh5OL11pJ4SOQkdcDC83NSe4z5Qu1PKnc1JQi5s78ZWPoEDk4jgv1AgZj6SkpfjnMQcRC4ob2QaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777559253; c=relaxed/simple;
	bh=9dtzbnrbyz1jB0A+nPCf+TXXrhEMiPj0dYrlV3Cm3/Q=;
	h=To:Subject:From:Message-Id:Date; b=sSTEl/omIg1XoO2k+Q1bl4L1kE9k1CwmfZyclBg99EBgDf6s17O8u/HVRYk14vDZeagAAry4rpRjOEssTDqxK+eDupISGXsPw2RQeSqZCLWScRuKj/Z6qau1vOqSm3ZHJhuIz8eRU4SN9aRv2JTdqwkW/3j0Agp8UHSdvEq6ANw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KH3hwbHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KH3hwbHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9408C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777559253;
	bh=9dtzbnrbyz1jB0A+nPCf+TXXrhEMiPj0dYrlV3Cm3/Q=;
	h=To:Subject:From:Date:From;
	b=KH3hwbHIrzq9RZkaTu6hOdBNY+SRipYv9FnGOHdtZyjBKqQ6SZGpTLEnLHwjfKmgK
	 NPQIv1+2Ns3KBM90Wa7ri7zrEis+lW/wP/0qkBoZtcJx00wtuBvOL1Z9zd8BWgpbJY
	 JVkiTVPHwSxtqaCxQWdWamVRTSqFqXZnMQ61HrdolOgyPbQBxkqlZPHmyzwQYV4czf
	 l/zzGDFqEbfQ7A9l6HNS4rXKz6JByBh34jlAdLN/SMQSsKU0R5m1RDLIvw6ILaaR21
	 XF3JiJZwkMadLuJLdr9Bvc1RfgQvGoy0UdGHtszAxYLWxxdy9kQHo4sfuGnpdtwssb
	 ZcCE/sy4zwdgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAA5FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177755925369.24541.16871761733845585579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4796611960cb48f6fd86dee2fb897e451c819e589b78068f4807d54b893a08
Date: Thu, 30 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777559253
