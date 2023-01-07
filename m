Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD5323D7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AB12C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673109687;
	bh=LjVyBwEq/E9X6lrByUEHigFt4SvHNj5+oK2vqzALBxE=;
	h=To:Subject:From:Date:From;
	b=tnN/ZLrQ/AQirBWA/PY7zUds8Kxzt52GCJkVxLPKJ1fzK14XZrPcOP3/0dVAEUYSa
	 Gf0wf6DmH5Z6X02MCFStET83G6UlU80Ruq3cZ0IxZYp7H8eDjJvpbiNpbPG26yE0Vd
	 ChuhW2tGWD/h9iruF2eLe7hNoavQPGnYLXue8+36Iirq3dmqDqLisbhdXVySsLgdbH
	 WM6ZOmocxVN7kMpKcpMTWlWNx0WyKy9WgY3osiv/FgDticDPCuhrIrHUyjgQ9R1dIx
	 VVxwbYbWGeq/RP/HSOYLr0AOATFGMX+0eqRA3tYJTxOK+LRz09gj2pi885eEe4YcGT
	 MqT/kjwgJRxkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D954C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167310968748.6188.3468129273646115120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6db1c1d103381c39601d3ce7d7402e22785201985573c0cd5661e6a1129a597
Date: Sat, 07 Jan 2023 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673109687
