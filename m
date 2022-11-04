Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF16803
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96B65C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667594454;
	bh=ohv7YmM9BQ7rz92kZsvCtRKfvAdji/giz9eovnPT0t4=;
	h=To:Subject:From:Date:From;
	b=tP09vdL4jQ9rbWFqSsoC1mmu1hcBzBjInw07XhXNuwQRbkiogDjnPBSzMF4raWpVJ
	 EJ6JPLgZ9zbbZqWtx5rypac914PF3TvbXyB34ITYzO41L76iVs+eTmXtRM4q/y1/Rk
	 wKvALQbBFjbwDLTshySzCoYmv+mvDuDEJBt5wPgLMEbe2c8UWHuvXwVrRDLXO1P0BY
	 LhmT/ypKGDVUoe/jvqj3qIFPM1WvfkdbhdxvLLPqvvwgXGaFpXunNdgANtbTvISAkA
	 ixwo6s/dqQnUf+YUnvkzG3lDfLsd7D6WN5Btb4NhLTLz9PTSVcAuvXhkSFSr9+qTYW
	 Sjt6TlCvH8ZWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72850C433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166759445444.1340.14515199225519575202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9290c27720c7dc2a7f4720111e55166a5fd08cf5935f836d7fbe08d2d1e58ed4
Date: Fri, 04 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667594454
