Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9B97E
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD03C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672394487;
	bh=lpEQBmz0HYEPFaGuwtZt51cK4xgpfVfw7YC3zPwIuho=;
	h=To:Subject:From:Date:From;
	b=TuPQFQshQi9h0k0uWmr/PO/orv9wfLKxuDM1gcBUpxtqR78rmntxDfyyHXtLRUQoD
	 L7ogSmboCyMys+UdV49x7zTaXz6JZh7gYw4gw1p7tzZy6f7bvts0QLV59G+r7NCgn4
	 PEE+rQRPLcRsonHcxozPpuJBzgdnvNN4pauPKGYcLpn/wd4E5xryigvDE9RaI3X5K2
	 sHadIXBNUjerlbpQmMdq8HC1ITKaDXHaAsdCgmdiKv1+ThMXrk176lVFe/EkgyE1NH
	 Z7/RGwYnxfyn7Z4UQ86/fFevRAHkN0GW3Vor9e8gECPcg8BjgNcViNldJj6pwAREmT
	 hfuUc7LVOEVZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6304DC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167239448739.3586.722363079150237448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc8183071a6a676789288f30b6371d821cc9ddb52c3cc0b0d9b07978bb5796c
Date: Fri, 30 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672394487
