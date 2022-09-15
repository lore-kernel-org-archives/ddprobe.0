Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11AE4683
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E5C1C433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663250453;
	bh=QnTCi/dQAt1FMArrwrUjFJ3/Oc/eOx2YSoi9+G4s5QU=;
	h=To:Subject:From:Date:From;
	b=rDYm8/q97BnH3a1Ku8ji/dZBJM5zD5yfSxMrlFtYZ1QTxaSXGa6UhtKgqbyb2eega
	 K680gSODGxOUT028tQ5O0JVusKcoLvk3fVskYtt1X2SVErex5USDiW7L7gsZkLKOvI
	 zHC3DV1iDVUvqSyYLW/MjJp8WBCGuoyDrrTO20am7z3gA1q9Dl/SesNXKC3d84+YPb
	 bknqfbD6Wq/er1Olu8FqYTWa1PspnR170ACPs6c3jOVG5G5rwl0Qa4cxoy5fO52rPo
	 hpPoeD/cg2FMCcSd0YyLrS+IRKl9joWFsLSOklt73sj7OeoIa1KhZOmXLhXn1HpXHi
	 n2Ty3tbB1L1nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 587A2C6FA89
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166325045334.6619.1625716493690537068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7616c00cd9e1febce64256dd3681b283b6b93b1f5f67b7bfafe8d5b3d33a88e4
Date: Thu, 15 Sep 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663250453
