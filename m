Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D74184F
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 06:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6D2FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 06:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678687625;
	bh=/qvA8euYR3M16pkd5TgVymE09PaM31ZVGnX+MPKXOR4=;
	h=To:Subject:From:Date:From;
	b=HrPVsqNem14wy4xu/OejBmJPFTqJN2XCAH7Ui++peq2KiXnLXEmAQ8A4wYJ73wpAz
	 NLR8pTmbEdEnrZP0hfSQa9/m9fQZtmX3rtmF77A7SaeI6gEkU/MMlBqqBXG/w+XvZl
	 OWaz6zbTCBm/9rrHgqyEEAEH/MIcn/xOgMKH9RNS5FmYNOYUMzoQOKDcqCoo3j8A7Z
	 M5SBChkJ7f6V8wjEybWuIp5fVC18APv/HFCMqUwvDCM9zw/SnDunrIEwITIhBhl0IF
	 wk7ZLzOxHSXfVUwAMoTympPhMuozQ6l382k6jhRgJpeFV9k1ZnUUXFZRtf98QispzQ
	 71Zx2ZNNWo2DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4FF6C61DA4
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 06:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167868762575.17156.13232315298959211965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9d329261277fee1266e616463a7dcc021d050c0afa0b4ebf6ae62613281a0f
Date: Mon, 13 Mar 2023 06:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678687625
