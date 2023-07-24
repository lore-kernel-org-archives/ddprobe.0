Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DDB2111A5
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 22:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9AD8C433C8
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 22:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690236728;
	bh=Vps6/bgCKUe1bF8BGsXLsFg8dDg6Wse10tDvN8ru7o0=;
	h=To:Subject:From:Date:From;
	b=tJrQL4vERAmGbqSv/SgKanb7TeJtHSzKpZx4yLF/GnM9srd7wH0drj9fhF1vefR6h
	 f3K6WFXn+yD5F4vahlAunagkg77+Aebb4MiVmeG0fZUdh1nzSVtP0YUc58iP1ftqxR
	 /JMLDVfbRILKtLzwbWkRw4PswRSgzQQYOnPnM/nutq1LG4cbb81RUPZ9BorCKjBST+
	 EtSgBGVNkBMy/epqdIeeWoIdUEmEul2yjI8DmwukyXkaGgLTgE/MKAGpZJlGDFgTsU
	 LQltLGOMpHEs/Z1bPfZlKW7ncNXIU1eZWTxNGB9nDhN42rUzLnglDor6tPUdOMqvpC
	 IklHFZoYHx8Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAEAEB64DD
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 22:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169023672867.23314.929575668849452996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5286dab3fdbe1e10b93b6d73d0e0a1264835e5e655f1c37547d766064a8245c0
Date: Mon, 24 Jul 2023 22:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690236728
