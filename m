Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04282903
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EBCCC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665407453;
	bh=DSECw+apfPQdp+mR0ZQtkvCPSxKhbvG+C8M0m/8K+p0=;
	h=To:Subject:From:Date:From;
	b=pB91MoHK9hNTDPPjoQwL6lyzpwBjK/bSZ5BNSwX41UaOE9jrcd0PKpr78AjONcuOY
	 24QErFLiWJUUTTrmOmqoC1/CqhWW9oTQasUrofLLam6BZ9qSlds0vII/PdpHjefrv6
	 VMwENWVO/n+N1aRnXYdpz3JSzL9NpysoDknDQXGUeZjVM/NQVV4grh9nWaWSOdlYou
	 pt0m3AJG20dM/+miu2NLkdIFC8LeLXJlxM+t8I6plSoTLZsW8mBIYQTR3BMWHYZFdk
	 aGmWzCr3ovvha/jJgZ3/U2taRGTNC2ObT5Xr77cMcuRoCXFAueLRokgOQNCVj2I8g9
	 n6uF9sIt8CFuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51191C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166540745332.14719.695914366056303368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8013d8b28342d1d47ef1a0e92ff30af0b4c524d9b29345c3559f7e865a569835
Date: Mon, 10 Oct 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665407453
