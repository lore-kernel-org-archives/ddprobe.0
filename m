Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A916ED6
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 05:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01C8C433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 05:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691646788;
	bh=laFnXscWOQlHUr7/CT+KIhbLoLBxu2wlio43xYrSKiE=;
	h=To:Subject:From:Date:From;
	b=CaoeV5dLVRevLV5T6+mX6VXtVBKTC32DQ/O7mv0fHaEXDZyI3noCLXpDpZdD0Drmh
	 XFoGwjM3kZ6pRSnqAoG6zQrW+28ezVKjW42+OrI2rPEMuwyjgmEFOS5lHccj1/L2vK
	 +7n6o+Z3o97+utIWcaaRMhBp2pSj8c6ZTHbIVNM9nmA6vD0FXrrNHAE9OxZekimtDT
	 slnYgaj6XOjK/WjcfUwn/0DAe1sNhQ7p1PBhmow8QeiYCWu7l5t9H6SQae/X8hmXBa
	 ipyj41ACib8n414EX1iAEaSAmtB9egPaSoLkwtFabNgTVMt5hEpRRRxeYdZKw79pCr
	 IXYlotjX0lTJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB29C001DB
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 05:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169164678870.32388.10514443523737391010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fac4bca2c94cb42d62cef8f1abaa59c1cf6c19aefed46da517fc14212fdc5a1
Date: Thu, 10 Aug 2023 05:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691646788
