Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F3814F8E
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 08:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE916C433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 08:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690012928;
	bh=VlBDHTYlsfUFBth3OjDNMP++wXCU1XEZSCYGoUGwQyo=;
	h=To:Subject:From:Date:From;
	b=Tr5k+tQV5u3RZYpBoZY/zbcS+KImYdwjKeci1gBUJmjGL9J8IkYfpDadqkLkn/2eD
	 8KqmiFpQAT4YhYZCUQHZuxw9kHp3jPebjcd+bB9T50C//IAuWRd18OOWTsB7FozbpK
	 qDUDl/i5deRmkTxVIn5QegJwNEOvBm7lwT08CqDo7E9BS7qk9oT5IGP6+00B7MIbZF
	 +hukwspKSViu3CWO23hEooIYJtKr1SAtvrKna5OTL1kntht4DAGBiZtzhTdylhD/om
	 ahzkQMm+vUZzpb9Bm0hjKpX2MWcBWOpR4Yjh43g/3Cil01dvvdoikab+S71ylJE/O6
	 gJ683Vt33mFnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DFAEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 08:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169001292872.21239.10075147096162244864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136496c229c886a0772da5b9b2e8e6a5f0bb2474251298ccebab633e2aa7ce58
Date: Sat, 22 Jul 2023 08:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690012928
