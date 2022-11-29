Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83A5630
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C86CC433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669695054;
	bh=e9iXDta8ttCkqFAQFzBgzuaO542zrvKGCiCxdIezMpo=;
	h=To:Subject:From:Date:From;
	b=o7ZqSRnRWVd7d5deWnI+ZA7SlhFpbDX/S3nAA+h/VXkGxmLWoBNNSb3yjgxoXdNPD
	 0ZElrhudu5qKGmSELoz3kRd9V+kMlIiZGb8lyqvL1a6bejq1xiAbsHKRTAmVkc70I0
	 gBFMfxm11TbvKL022jvj4griD+AbgHSp0zRZ7UvWk2Was+reTbi6T5v5m2c62jDaYh
	 KTk9L6OVrDEq5K70ztyR3ROljcJe49KqMgVsRClM+3JcjeZDQWCRzXXKV+QzN2sTGO
	 AFxMz6DbXvEJjQsFMJiT5+YXI6Ee2hO589wuEXvmyZQNbZIDurYgUU8dCDZ0mUOEyV
	 UXI2e0Y3uYlBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523DAC4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166969505432.16535.6044569351128847837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab7979e295a66ee66974e45f9f41b2bf3b8b0947f8b76061e2e3585e65964d7c
Date: Tue, 29 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669695054
