Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D0CC8CE
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 16:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE569C433D2
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 16:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684166405;
	bh=KyEibIVw4su5vkIhdcaooaPPhs6cFMv/UzIBA6Q/6QA=;
	h=To:Subject:From:Date:From;
	b=Tty8r0I2bJ5jut6EzyfN6vlZ1czwYDc/8PtdH8PX05dMkTtPsmHhnu3DGgQ426bHd
	 CXek87AbH7AAD++K90zhiSdig9i4ILzoK18lcA0KlnZZv5LSKETTYQ3bPj0kOmK7a+
	 WuTiakDjSFtnYM21cXeodTXTCmMKu7cT2JG8MlSOZAMvFbix2shRcSeqBDJATqqnXf
	 /RK86gJ28aC1rHQ9X6p9TDdgCxAZbqcOBIwmsroeIDmKvKFgd6jH6ThLKVhrvoMU0b
	 yLfDnbYt92QPws74wNhywgb+JsjkuMeNFgPHz+rRQOmKy58verMUQ8Vg5G00GbbYUp
	 t3DnqWO1tG3PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4949C7EE22
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 16:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168416640573.26520.3565516164757096033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a8f18e6f487728389848242d7bbbec75c9679611214a074e7c613732a3a248e
Date: Mon, 15 May 2023 16:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684166405
