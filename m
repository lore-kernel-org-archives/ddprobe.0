Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1E81849
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 09:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1339C4339B
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 09:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679305625;
	bh=ShS3tNwKZ9qaxRRRzx8rXcXfQ8LxXnMi8OTCJg4Kb1I=;
	h=To:Subject:From:Date:From;
	b=gU3N1HMqa+osmWqx1FEOM7HOp7oMAckUtxTZ9UmrmrKjWsYnVW7eaJkjibBuE//KI
	 RDjqhNwMMq6d67cAkzLpgtFPcRa3/XH2SzrXOUC2ybfO3atBCNG5kNYnGePO814atl
	 qS+BXGaBkFPfLd8UVpbzQj8rT7FlK88w8rKXFn5YU2/V3qXUMcOYhJfdTOBWym29dD
	 99tewo2kQ75GPvOr62pMWGZQraavjTSpK3DoYVRjMHI7awdNGOAbertRmeHx9ofX/F
	 a6XtXqHdxcgqeZG8uaPe723au6YAB+JNYBMpSqHKFlNPxP2CBEJjWhVI7s0+fW38oR
	 Jk2vgBni9JOSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45FCC6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 09:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167930562573.28982.2415020191036717558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6278bcfef71e0e2c8ee52eba535ecdf30ddef71fc3515c15c49347cb089a7d7d
Date: Mon, 20 Mar 2023 09:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679305625
