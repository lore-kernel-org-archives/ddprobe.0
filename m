Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9C27B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3ACC433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666654253;
	bh=oL/IM5PQsl73qf/mXfA0PdUU1Dp4/8T3N5QpR55jUPg=;
	h=To:Subject:From:Date:From;
	b=IDHoQKKo63LbA2fkxi/aX34s+e8h2MIucMKBQuYUWp1blly+nSJSlMO+xJrUTW8Te
	 kVxtIucgmVHzF0+SSBaMP4MyVPmR3wae0KgJEAU92u+FrTgbhxJIWHP1qZeoaFq3Ns
	 zsaDq8jnASsS4LkeGOexZcLZAEjYpCLUdZcELUPdso9JWjDgEfsKfIPo24I9WdLNE2
	 IY0Txu6Nlfm0Q+ll9OaOYAokgMoGnppt6B/bQU5Tw6ciQ3hUI5mV/a1hPf3Bd75CD9
	 3QiC9Hr69AXgeCsqPRZdkNms759kxMlNsggwj+aHaa+eQiYHmUfEEcWMF5Zk4O0b7A
	 yBX/agmbB8ThA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F5FC67871
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166665425333.11256.1737882268533587955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e21f84bddb46fbcaa217ae14b9f7e5fa1d86c0c31e18be993bc8c91ddb79c67
Date: Mon, 24 Oct 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666654253
