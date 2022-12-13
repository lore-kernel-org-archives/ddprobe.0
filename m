Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D250079FD
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82539C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670970087;
	bh=EfNEjwJd0L9bTFmWXW5qpPbT/TnAM70yTpYp6gGsEDo=;
	h=To:Subject:From:Date:From;
	b=EJlyuZ2xuDg1xVHqb5tgcXCia2yo206jqj0wCB42OF23BHD8bCFuG3Jj3mk3rRWLE
	 WeZLqx36mPqZAmuOGpetepWugOP5Wyk10t/tZKrsJIPQCOLLzy3BmxiC1RFXm+hwSR
	 I0/kPPYwa0EGwN+Z1KYahuiLuTq4jMRxMFeNTkigr8YDxZ+PDbF5KeZsvBsGb0x6VU
	 8mDHfxDzz60/qUkfrFv3z3gZZUAPHmL3XWqFZzZ/NWZJuk8ro1+0UTfleHVo1YaZLV
	 aBbh+w3KkbiEYLCvf+tKEsenrHyeyir4+oJqkBrzL0WrdYp9kNO/nGnVYefDaYNHWk
	 lNGuXX1B+GPUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61786C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167097008739.8317.14297013729652147480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f808ca279ca2a63e56c53a953e0565d454f14041404253c19115abd158547e3
Date: Tue, 13 Dec 2022 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670970087
