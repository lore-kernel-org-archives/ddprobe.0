Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE42F4A17
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D9E6C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671466287;
	bh=xJF+GD9EioQlDSDRw1A1nSBOIggd2Qzk9gYYH9ElC6Q=;
	h=To:Subject:From:Date:From;
	b=djrNpjeG60Pg506rCv75WOPXAe6XibVn+bKrhZu77Jd96BpA8LvPdxPaskrpmKoTB
	 GxGB48eqNSiHyjDsoh0gwSxyviXHvKjVuC1cmeEjfxjvNYsptdJbmDtULr8VKztW9Y
	 isjFL5pMi1E0SPoHPo5yvtT0HrZV0co39TDkJX2AW1nAGYnXbERvR9JzbkhKCqb72q
	 kVLfqpkpS3xznDP0tLOm8JTqlp0SFSj42cGKJl5GLynsKc2+ztplSPafoK080Riedw
	 s5nws7pa3Ro4sNN7WBhffVkmuCUSFVLfUDbVuY4fUSP8K1sgZu15p6ZbVy1DkrVQBk
	 dYObZzgIeMZRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D9D6C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167146628744.11909.2070131939233933880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b12356b0061a65a1b3bddf14f0052ea675d443985ca946d0e94ff70e0f081e
Date: Mon, 19 Dec 2022 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671466287
