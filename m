Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA28F7462
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A21DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663617053;
	bh=jZ/naHFwYt+7lHOCsHo+D9lnCwF6a6Zn6QF3rQdFFmY=;
	h=To:Subject:From:Date:From;
	b=ifw11J3ghwRW06L144RfWgObCPpwm5Hx3bmX4wNXA3KefucR0C4+xZ01IX5PvUXZ/
	 iMmTK+Gx/iSHDApmqhQ16j2WEaNQWZ7Yaowc9Kv2BhzaIf9JLJROBajprz0lAtGpx5
	 doHSUib30pZhZiFZL0X154Rk6zGmtA3ByRuZgkv0w6LaEgi1TWEyZakSbd+Q4LUAQb
	 VUDion1T0VfzAvg1E7YY7NPQQMiap4cyLAabhSNMbzlK2CcBjubKK8+Lkb9fNYY1Cq
	 pnij32O/A3Eu15JTCXw+9gDm0eXFjHIoodctyTno4Yp3fwAEmM18xy+0Iq/MVpdcTe
	 SCpTCodt+jnIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F3B5ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166361705331.30417.3223183322152564416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96bde6561e8019afb6a5e3ec66e03b71b0e5f666ea32de098cf8cc5b974e6028
Date: Mon, 19 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663617053
