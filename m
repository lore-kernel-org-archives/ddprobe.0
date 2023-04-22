Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C8E7F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 05:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08045C433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 05:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682140806;
	bh=gFu5snk+Nu4jMRjHwQqCqI68AzMCnjTeYdSpMzUblqQ=;
	h=To:Subject:From:Date:From;
	b=RVxy+wiNuJMUyLwvp7NiJpSTfwxPoRtiyRbfyQlKb43LkhMcF6OCI/nHMIxvrlvl4
	 PdVNAeUt8Hi6ikYC0wXDYkPhD0dhiKFlIGGunC6jLPoI/QYOFVj3PqPqMR8qku4nzb
	 nAc5TMXjXcnVPKmdhIRHyxcPLf3XuOkxRS/rvyDj2S5IrC1cn4bXAPO/FoDPSYXGiQ
	 hCh6rhan5nK8qCH0U2mIV88xLOVQAtXMafq+OXouVmfmKssvJqaNBW3ey2dKYznGF+
	 mOt4nCvwv7tqepRAg8msBfG+qN5JnqZj4kYoBFH5UEbyn7BGAU2nWMX/t1evOruxT7
	 Vq+vsqrCDpPKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE622C6FD18
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 05:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168214080582.23316.11469557114397280313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbeb7829a69e6d2d2eba7a36a30d73b0a25385936a46a6437069ca33f4278348
Date: Sat, 22 Apr 2023 05:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682140805
