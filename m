Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88C055230
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 09:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7874C433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 09:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688461568;
	bh=nCEWaA59N14HuHf+cnbT6Kb4WZGIeBPI5R+TETV5LoA=;
	h=To:Subject:From:Date:From;
	b=PNXZnX+ZGP2CCNQTQxQ9vRGgr15YB2FjcS+GrJ2PromGub/emMnl4GBuj5uAnP4zI
	 IQwZWCNKNrvEVB2u6XSoxeyRKv6/dUTG2dGtQRNldQRHbWSb8GxKLgjP16h2UMdoNe
	 dt5C3LsKoeuOOhZkR34a1KiWrYFp6yTk5zwFD9gsq35SX5NvFKOokDPnEgA7h6d7A/
	 4/r28ln93rUY1cqgSahn2DxS/kSua2l/3qowFKCr5hSHXq3fUKshWJ+6Gfqd1oExrf
	 WABcUuoAAnpf/LIb55+9+ehkkRFl3oKIb3JrOJROTcmOWimLv/FwML9797USFY0CDK
	 +/FyGrlY4SKmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7893EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 09:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168846156873.28364.18426975067049574696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49644f214059471ddb064e0e9a0103ba29420876a5b6546e217fc956b6ee667
Date: Tue, 04 Jul 2023 09:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688461568
