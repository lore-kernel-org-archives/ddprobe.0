Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4637C1FAA
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 05:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3009C433EF
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 05:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680241865;
	bh=0yqQQO0+gvpY8zfFD8mC1YxyNguEihSIIgTCaN/Qjlw=;
	h=To:Subject:From:Date:From;
	b=ivbuIazcD0IWtkh+Bt3tO8vGJnVsPQaijPrnFpnBUcggfftmkNuJlq17aa6TYpdLs
	 FfpUlbBclbkX5849ZXM9/44PMXqe/zGXrxzpRoTBdygCBzLyn+257Xxzan3+dIOSNo
	 s+LKtDaHYuHEh3Gfw9zzpWV7Sq3erk7r5lBur9YP3/ds+8qqp915+0vS5+EjGrh9mI
	 ZcjyKU2IkGjZd99Pf/quUpE/hZCjuaSf4YevlQoGZj6uVMvuxUq4g7SuOn3P218pnG
	 EWBwCU8MgZv/JvSFV7O7cJGCCnE01Wp27Kkpyk8LQYnHREtALSht05RuqAIvKBi1hF
	 nuCBCgu5pDPdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3EA5C6FD18
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 05:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168024186579.28333.14004821267250142416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd873cb36e3e44f29fc630a70a94c8b94b5f39b97c4115f7278919add752bd55
Date: Fri, 31 Mar 2023 05:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680241865
