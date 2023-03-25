Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BC13C27
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 20:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2463C433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 20:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679774525;
	bh=0O5nV8IBIYWgraz9Bz17GP+DAGVjXtSKQ/Eb1J3B02o=;
	h=To:Subject:From:Date:From;
	b=faaCYoSL0Z1is4gCkDWH7gD8yOroUS0gL+IAu+5Hv1h1bQY5WYV1Or+lZXW0W7fCp
	 vH0ojHVDPoTWK48oIERyqwwTKe2Yhn+7fHg+ApBgZnxg5vhmBKZMaQ0GjE8XRx/6wU
	 wuhrOJaZV7LXx57h7oJaEz96Jdb3rssGnqyKSJKCpwK5F4RoLZlJtxvc8Ja62eZJFP
	 RJePrG3PAxSvzxhG882PYjtLh+3vtONx1CxlSfuiznWQr3NOuKX2dN9Gzfu1WHnAPc
	 fqXQV5sOguUuMSlCHPwRM4Z+88kGCkhnq/4RyWLExoPdpWeVmMBRLPSMrfhlplI2+9
	 srprsJrkhd2KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17D3C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 20:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167977452578.25795.11582245686310094828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa6da7aabbddc51add08bc7e4f93962520319b6383ed17db7c62b2f861b6a98
Date: Sat, 25 Mar 2023 20:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679774525
