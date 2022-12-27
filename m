Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7D77ED
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89235C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672108287;
	bh=Sm/pyUueCWfljzta6/LHIFFmLahwGQ3I2pXhpRqIWLA=;
	h=To:Subject:From:Date:From;
	b=IejBH0MbTSVH7eeFOjb3RGpe+CNMmW0Y+bq2jNAvxlW9bY0fIAf9H07Y76rV5bjC9
	 BY69y+pBq1uDHZ5b4/YMQDnYyu/ZNjQsBuEgJ46BWDnPcMW0p4duhos4BjUAu3egmE
	 ldUUEtnzVgf/J3Lp4TgLvxVUQ0EcHJ6x15SFnCdF9AGVvSYrciTa1zPkadrcZWVr6T
	 THt1c6y8wtVDdmGV8X2TENIQEIU+O5W7rZVqh0aCY+bonjpwXFOF1fdBApWqeVf8Bm
	 fnDKRd8K4uZfosCJ6In7MGC+7YPc3MVsL7QMpAFGT6C1A3i3uum3DWM+DMoN09gdg0
	 o2c7/hNleQjWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685F2C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167210828741.23770.74250096497352179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3cbae026573a694ae326d628e41186f847ed3a8402aeb44791a5b3c33fdadf
Date: Tue, 27 Dec 2022 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672108287
