Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21E323D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF45C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671292887;
	bh=/SPxl+Hj65r/EPAm48V8SFmtKEl0MGcIXGpGpEIT5Cw=;
	h=To:Subject:From:Date:From;
	b=hHaLbnLsKW6AGSSY3wAS9rwrBSqMG9HemqBNiEVDw9a9D9SnKFe8TvZERWLPrNBvl
	 DNkA39pEfqzQ4k9VJT0ocxZtzBJ8Rn45aggMP4ZkODZj4XY3Ye/L2zgnKOHwNytZ21
	 v2xGCWV7aLm5/bFEBNFoj8OPl8R9oR8/SXm7nnEL66bjH0/OtSs3Hj7GtiGoV2k4WJ
	 Kq8xAT4jbHoyWIWIrMm6GpVrM0lSSkC38+mgR7P1o4lFhqtcI/mGKDyIZ7Fr65Lz5b
	 AOWHGYhWzOwzQ/PlbwtWtLsnX3Wq/CAP10M3+nl1JIlcOOmmVeKfkwZvWtz5OYlB5o
	 4agpfUcdJtfuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 767DBC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167129288744.16470.5657773581712075211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee558c6a395460cb0e889c1831bf4df56f6ddf743ec32dbe41dfbf4abb1b6dc
Date: Sat, 17 Dec 2022 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671292887
