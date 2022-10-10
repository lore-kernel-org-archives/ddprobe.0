Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEDAC33CC
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD8EC433D7
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665423053;
	bh=UQ9kKPHW/2AIaL77hCKJDAW4m0/WBoE1mcIeffAEHQQ=;
	h=To:Subject:From:Date:From;
	b=oWE1Z189fxLEfR7xoKqqcDeQmOaGt/pPZ0IXDwnUQaN62O/Hjd6N8fjBaL3B59e0R
	 1WI/zmK0pKiL5AAYz/LfgZDpkrr5cjHm6ksM45XMkQndKxAtRepxafJJseNG00njJ2
	 bEDT5hWnBvljp7uvbbOhR4ugdj/vMhs5zsPTZv0VNcB5IJNkXi6T4pT8KCb4ySANos
	 jY0/Pfs6QVS5zY0sdSIdKB/SbsQtlUaD14tY8dXuVIuycci4Ykl5VHe0vwp1twZDLC
	 EmktEQF3Y2cBu7zt44puDJ+jRT0WHwjblJKTBtXVPhutuEauuy9cTxlGMXcX2Qdx7U
	 jRfOIaVQsFAxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57519C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166542305335.17926.16303839568677241002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74db1aa04806f2367fddecd5ed7ddce2c6d2088b41252ef7c4168891c5ff2d7
Date: Mon, 10 Oct 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665423053
