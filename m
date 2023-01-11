Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E3117D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A5AFC433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673449287;
	bh=z8uTq+NXybOtWbP/1YnJcS6YuaQmmxpWfmcty7zRa4s=;
	h=To:Subject:From:Date:From;
	b=UiiXpRzCx++myF7q1Fz/D9+2WGrCmZB+z14eUQSBS5E18Ep9qcHaKCfVrsWvpT0x6
	 wwuk640H7ckWEigtsxxH/6KtR+u7KLwu2/xKcvrpJDKHzMG1g7eaPL+yyKdINg0zIu
	 vPec08UebzZzjHv45pR9k6p1o4nTrlf4T+QYU1gWK0FU8XobF0d+5VPdD5vSQ1E/59
	 JxscMBLh5EB1WbYy3vPEqpQ5ko0tqp99ylXUXFlrxWEFlJtdEQR0s/XEQvJRk1l2Vt
	 MO+/muIp+5v0Lxcn0VnLjuU4KGJyCE08csevhRwl1Z/IyiMN/YTs4jxqga2XatmFmv
	 s1FvMGiflr1kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B5BC5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167344928741.21767.16858834353913279649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f2d87dcda2701c41ff2d6f41e9043a672cc7093bc8e16c2d874ae3c7311678
Date: Wed, 11 Jan 2023 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673449287
