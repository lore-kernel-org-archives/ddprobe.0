Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745966FC3
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 16:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3458C433EF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 16:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685983205;
	bh=Uxrv6rTi9KvPmN22VswHKXHJb05dUB0c4o1PaZ2SlIY=;
	h=To:Subject:From:Date:From;
	b=aoIbaX8e9i2e72jQggBgdycQ9BX0oyiN+NW3+Z/R3CAGNt/Zvnx3wfU6MtxCYtEUo
	 0YxMGmaG4cmvHa93pXzH7Gxb0SG2y34u2pYDOFEbfXkuPmQVB90TbZgoB/vy1zX52g
	 r7voN2zLRitHAuyCKOnnl4ptS4wwtsjvMrNZL8nrZbHzK0nF3ph6HZLK238uTfztus
	 99Os73blWtvNJFwgS1kTH2SfIA6uYR9FvYzOEPq0p78+/fIbpJW+j71TfX4C91GwhT
	 2iaY8nDpzhl19hTdnBYBUXNDkyxTCFoy61l3qlCyG543hc1GbP1GnEM+8U6hq3fXuD
	 8KQXiflTb/S+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C249FC7EE24
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 16:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168598320577.30999.15335504396585062393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4983238a22cbe6423b654b9a929d7374fc1a99fc4b6ac28fcf046e101c9b2838
Date: Mon, 05 Jun 2023 16:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685983205
