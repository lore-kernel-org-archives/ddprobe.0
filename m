Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8E2364
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 01:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 22228C433EF
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 01:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681264326;
	bh=RWT0JFZ74ivENsl8SPEDBbLVHyMVwRqIfWGkr4dGeAA=;
	h=To:Subject:From:Date:From;
	b=Gs/I2HpOWlBxBdDKgVB+5heFkdtoM6QLqqHgD7XgFiQNvfSGHXtX/AmXEk8rrW/IM
	 5MIHVxJQIKnyE6FiRWNpxfxJOdne499qHSp1S9ivI31qUIV+X9cYxSveB0UgSwsS/A
	 OXLORuByxR+aoS2ar60AjqqD2ucH1nHzrdk6sqxlbDfDTiIEFMv/vz2ttvDQXogM3I
	 BMUEODJV2YmBaJbXyWxlcMKLmBxyA99Lk3DyxKiCj6yuVJ7GHMmcBmIaoyVId/fbrg
	 NE+u7RDlQ8VvOIkjE0bVmDjHMhlXbMms/RacVZgFrmXXPzT8D0ahSwXtoFq5KDm5m/
	 jnZZ9HuP7Io+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 024C6C7619A
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 01:52:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168126432599.1481.18311157174788435940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8823bc626fad8bc617c87bf942b79ec11ace6b62f290e2761b56b27bfef560c5
Date: Wed, 12 Apr 2023 01:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681264325
