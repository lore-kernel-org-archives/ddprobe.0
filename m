Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33097A57
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 14:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3332C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 14:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679927585;
	bh=GiniAYvDPSujez0SgKz1tZejdd4mrvf1IR5AE5rMNFU=;
	h=To:Subject:From:Date:From;
	b=HjsAL6MimltLDQHof84/NStCT1ZWSTgoIiViZbsEDQiHlYlqUTO+6+mLQxa7VCIHg
	 1JUrjlzT1Iy4TZnqDxycbxt3isILNYHtJCktZlfyc1phbSMbjxRmI0kYKvxmJflzz4
	 ZC5Lri9ggXL+Nn2tqFo0oL4M895oBzOsenEKM3491adnZ3JH3Jqr8ne1C1uXVo4BmO
	 Xv87U1U0RhIqoAWAlOH5umWhfCXZtqBFDO9tqiqGDzMu0XJJGCwj6IHMJZ45zoRKPS
	 UA/uIzFNTWmXNwDzUaSJJECBUwBCOP3sKeovHiWp3iRGKcYPjFZ3Pd646+4i0NkzKb
	 bz1hhz55BDMAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D49C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 14:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167992758574.24920.9008219062291798896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce637f76ae98c8e430809febdfae3c7e006141c65d2a1951debca2a6cfa85c9c
Date: Mon, 27 Mar 2023 14:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679927585
