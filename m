Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2DA7C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71FC8C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663428653;
	bh=kqPhtzY4RBEgVmITOsGib+8zQ0ewX6BeAuXH0mxCd+c=;
	h=To:Subject:From:Date:From;
	b=IGFvYHg3GpvwKchAY6ruZbRPwBu25TwGplWgWgaLxeo2952/qg1zxNoXCrywVumIp
	 cqkiE0PA2MpQbELq2SWRbdzSsi9aBsZ/t7Fu2KrDoaij3NjJB8cbpUfocdbtvuKxgO
	 qHWoIdvqwbRfG4I2AdXCUVHpIX7cCWg27TYeLoJcwc7hhtyFuxTFQDfeGdKsrDwX+k
	 hUrvKZznOK8gOfkkkmpdYOi+iB+5HgwrQjnQ5y0IapyS9/6LLXFfeb9cocAP4UjgGO
	 wSVJxyZmWEbVUxN91B/LJIyqSc2Vw4mnBb+32Wk1oyr46WcwE5oadh4D4JlVS9aDxs
	 670fyEIxVH0Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 511A2ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166342865332.7823.17408547706849068521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ad804b3deee7c58b90b9705329be1cd22a208e176ff9075867f12366a9fb92
Date: Sat, 17 Sep 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663428653
