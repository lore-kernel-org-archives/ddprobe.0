Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFCCB2562
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70658C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663683053;
	bh=1o8hQ6abG1EdVHWWtoAFB62bVk3R2+0UZ7FP4OUSAOg=;
	h=To:Subject:From:Date:From;
	b=YmGm6M4Wl3x4O1hGEIyjFYxKE8PE29UJ0G+QF/XXJBGFkQqB6cfZDNzN/c3OmTF2f
	 M/dPOMTEmBwE4bNBn3Jx16U7WUXbnOyxr+xsCeGa7QW4vXz+fScFIvCTvTtog9mtDR
	 t/RB21QYGNcKr38slr5oIbZO8Yktcr6FGC/ZeO9rmtPvIRxg76poA6vG0pELUppJep
	 LHWjAM8R37dZIW4eywnfvRyMEnjxhW/6uFUC73PedfaCrrM06ee6gjrBJTfJXP/j/B
	 id5FpvLlGN//RFnlW1bjr9+mYKBt1lfpsJ8uNvn+Hk6KEzC+Rki/TCO/axGIK/Bkf1
	 A0aOzjusvZ1Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 574ABC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166368305335.25341.6788767373900064990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd73174886159d2947003b7ee17727474ae8416a3c7a7ee50a93d909cdbfe8c
Date: Tue, 20 Sep 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663683053
