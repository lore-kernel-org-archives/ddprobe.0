Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563161801C
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 17:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4248C433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 17:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689873128;
	bh=qH+cbPC6H7KAYtjW74tKJkYXIYzW6/6FFliH9MLnvIA=;
	h=To:Subject:From:Date:From;
	b=If+T2oKqSQcR1w6GJL9hcpbGy8mrYYevNQt4+0HM4K5B8/DxHiky0G/Mq1+w1zzob
	 LxF28jeOlLKRuswuw5N1USy9ozk/skpTrzV8ZEkVAL8IYUuRcRNAdr88O+wyKtI0Ig
	 aG630DQSKZ4FmC46ArNGJw/e4vQfflnusq4MhPzMpTNNJuqS1/JG6jb6kXnvThxbof
	 EV2m5tfcmAti9QOBUBta+rcHxoKwgGFAgEAYWEMbemQ89FEzq7+C2cMvXzs1gF1EIN
	 0ssKqhrAOGb8giZPfGecnpqwPRxqg4usxpr+y4OmtuvF/eenMjynrZpT5qZ1ajhmg9
	 hsaZ6wCusB5xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA65BEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 17:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168987312868.4961.3463782317557299689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a765ab1829b8d58f86c1ad48812eeaed8eb750cd8ab3105b34196dee0ff092
Date: Thu, 20 Jul 2023 17:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689873128
