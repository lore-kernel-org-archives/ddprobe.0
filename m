Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D86163CB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 20:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2E2C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 20:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686948548;
	bh=aXpG762RNsXdrVg3GA+AFXAyhu1gl4QEbcGQlH194SM=;
	h=To:Subject:From:Date:From;
	b=AY9litL/MWob/YbkY2Ec4GUVWhzqx9+m7vaT2VsiD4BbR1PDp4v9LuZTGeCTVZ1Mf
	 60HzTt/pCgCxigJi9OD96du81ZcR1Nnda0YIFBWardn7Ld2KThexVQB7MZlgYzxvft
	 BY7Vohiq03lF6mRoUDKYoGlvLLOshm/UscFwFSHFohC/S2x7Eo76ew0TYAfaWUSnsL
	 21KpEkVJeBcMShzk+jEvPMflsO5oYiM2W+Q2nhx6ghvjUSelYWZbsypRdui33/ASuP
	 GbASLYT0SjfrTCtHhrajnEUiBRyd/I7OUFtKOZnmUQJjEnl1MsLpbwKdLRuEnQEOYN
	 /s89cOPNnt94w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62EBEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 20:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168694854873.3742.8496642805548905234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9783980c4e0674dadb992de5cfe8323d7ebc48101ec7d212f6920acb979125
Date: Fri, 16 Jun 2023 20:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686948548
