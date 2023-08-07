Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A78A18020
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 23:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C32D5C433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 23:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691450588;
	bh=cTz1hXu1RXGY5D7NiOAz43pZZVMdbfG5ytRcTX+irLg=;
	h=To:Subject:From:Date:From;
	b=hH/CEnIWbP1IIeKGfoXk/G5k/eOQam8WHV1gkP7jtnzyiFBsXlzq1AAE2gI4/IezZ
	 4s0QKqSxwSYCMCAzhbuelyiDZCC0DQqeRHcNted7aTZzJTIVzY/FzW8Gc1v5AWixo8
	 iJnhzdX2Bta/1f75Va7eTkIN24+F4nxYJJCdmHE4rmFwYB4nzgmhT4B3hZot91yhtx
	 z3+A8widNSKc8kDTgZr7+qcRNCe5qRn1MeObg5rPr137ZUIb9g4Ia7hSsXbw3PNIBQ
	 6oidhiPYHj02GsCHvtVB6YK4mCtMb5gf1N3IXHDiegOetADlLsRNH4npmbu+upbefL
	 PdqwCvh1/u6ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7084C001B0
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 23:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169145058867.28311.1110615027377412140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6d23c6ec87b800aab955a28a017713e5e45fa4dfd5d4f6ea359447705eb648
Date: Mon, 07 Aug 2023 23:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691450588
