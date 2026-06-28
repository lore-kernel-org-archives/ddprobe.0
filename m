Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D723AFD1C
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782657514; cv=none; b=N1AEwJy+NLTAKpm+DgVcWg56/Ba8REzFE8Y3umPqzh+usD67HwISOREuSK94xQd2r12+0/j1HD3BCc9sntWKHMspY9d86InVYkNsHgTZKRxNA7JxXsNJyjoO7Hfxr+c0/u9y0Fk5wjMoDDW+LYp1MdCMp1zgAFWx5H4k5aG1Vt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782657514; c=relaxed/simple;
	bh=Oj5N14aJuiLVyv2CQIPn2RoS7Vs2FUEK2QAbNLHlzJo=;
	h=To:Subject:From:Message-Id:Date; b=Ei7vPqAgE8Sr6m8JIfwHlINSmlvOLo6pGXllwBiPTmoQIS4Kv4ZTp97V4UPMvN9OE4M6/ef8XxywzriFT816MBy/clpZNL12h5O0Q3/5ykF0xB99AxzlMcJGO0fEplz1h0jjZGeW0QpCjEno630W6pflmiBnxkzXfdGGv9emnBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZCEBJO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZCEBJO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E20C9C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782657513;
	bh=Oj5N14aJuiLVyv2CQIPn2RoS7Vs2FUEK2QAbNLHlzJo=;
	h=To:Subject:From:Date:From;
	b=OZCEBJO44gfhGTBlVw1f5S+PnLtfQmGwiNj/gjocMa1eRP2dkGd42c28y3F90Qvsf
	 YKTocftw6dGL4c2j46kbdh1lYXwwj2acWMtmTmBPb2L8YoHCESG7pBJrSbNtz2Wr5Q
	 oUJ7EpABxWrfTy7315qZdBxb82Vx3V7XobD1eom4qtEF5RcFxVTbB8bnNLzJvLDvgS
	 UhvGfJqDNUJoocYy8USFmola/IdLXEn2Ov2bOl0dkkxngOnY4jzVdLp9MRb87EMyN6
	 809jXt+0WuS/MBesUD8B2Xb5ZKufHF9172VxvZube0hti1+xA8rFExFH9j/kOFSBWo
	 kE+gtvYpa8Klg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CB2C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178265751380.18922.16336354930453797964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529d356fbff4de0bcd31de28a5fc8a58e4ca3e9d3b5941f4a26642fc7bf4ff6f
Date: Sun, 28 Jun 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782657513
