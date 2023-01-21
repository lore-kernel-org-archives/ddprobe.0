Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342E2748E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 18:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE69C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 18:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674325325;
	bh=6VitthPol8Y65oErutoL+W5s/m/TXgAsjuwnsYXmp4I=;
	h=To:Subject:From:Date:From;
	b=nQ+JseqhaS0KPN2cVN1nRbGUT+o3065sByitJ4sKZrcIAM0CGv2D31ZKrdHJnwFtB
	 bmeFLR+gsoLBefb5AorddKpKKReFvpqMUDR9Dicx8A0rU3QwQa3omsrVngQ8oS64Lr
	 yxzXUCb39tGgiMndTzEV6U3YwXZvl4FiLBV03blwxubnEalxpvNh45Lrs8G1qONcTi
	 /SYZxrFINwoNR5stnHSCRsNQcdLQSxUXP0PX3pd/RIFWz6A/lsAoVgGrbvtlNRQSOr
	 ufejBPE/nDq8PLT8/ps44YWZqUU/VxdI15SdUNOylBBVs52tDIYFJJcdVSzPCfsBUB
	 qJlu2QrXFhU1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C53C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 18:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167432532572.7282.3012548229816151102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e082568759471d18f1b15dad216a5ad974789ddf3dbd3ca397f3126bc7eb24bb
Date: Sat, 21 Jan 2023 18:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674325325
