Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1CC1846B
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B54C433B5
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668451854;
	bh=O+nPEtSmdhMAo7WZ4ynoydLOBmnilRlEeaYMSdevlSM=;
	h=To:Subject:From:Date:From;
	b=Ct3EuNe60GcRUrLcvJFx48TjFOtDZA9caAwUZ4Y/6MN3/PzjxtwVb+gPIxk23OioA
	 FnN9OX4UD0M3CMjKwSF2NM1OW4ICKpU0kRXLNp9keCPmHRZXEme+Y87EPxZGsn+t+u
	 eABKZWiUOkg0SN6Rwh66AIWinbkZSvR8yon1cz1M7YQyjF31mxt44p1l4Ky91ElvAa
	 Soh3BuatiuOq18HOtxP01mr5Ft6VAJspp3vrc9VMF6Uh+14uAKg0Ci/st9xdFTDPbO
	 I6cvvLX8A+AIr9wNogQ8XHY6dx1Ch5zzcJMjCNY7Kena6aKCyYP10X+ejgNtnIs+yL
	 HmAeD+MnKgrVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5534EC4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166845185434.8412.10947119427423927643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff4af547f7da2c488880184f1052b591be4e0ac5c6ef568130420450af883e6
Date: Mon, 14 Nov 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668451854
