Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C250184F
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 08:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D22C433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 08:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681027265;
	bh=PLD49u4L2XpVfJo1+MGR3Gnjgq0hKW9RjMnrs8XXz7c=;
	h=To:Subject:From:Date:From;
	b=MfNFuv4PZogEKvYh1HahcnpJxiJgBzAHoIbqh7yYoP5Mrll2l3SWotFYnbHrzJ7Jg
	 rpXBUEXOb8s+gLprCPAPfLrqYZyz80wGBwknpGW7vN3WcHRIC9KCOzmXm5hIyAiscG
	 Z/WDYF+/FVplBTjDy2ycyq59Wt7qLOv2w2tCsUHZKX+HkXVCd9Jw4Y1KNOSeVosYb0
	 6nHm3BBLlynmYMbKFvZxXhDn+b0YIyuhaALFNWUAx2meTQs/+LppawtPM554qCRH/9
	 q/3d0KWkPAABXj1Y1ixH7hb6pdnq58/vlPR9N42GopqsunbBigYzAlgT8r8Lx27IAA
	 LLvfNMgsQspow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2F5C77B61
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 08:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168102726576.17644.2658797782235881092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eaea55985901d2d6b2371c23ed51414fbf000b8efc135b09c402f99e60949a7
Date: Sun, 09 Apr 2023 08:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681027265
