Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF5913AC1
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 11:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1693C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 11:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686914948;
	bh=v66+s0mhGCTLi0VnK2TwvWcIX+wAwJYIEtSy+Lyr/Vs=;
	h=To:Subject:From:Date:From;
	b=siG6Ab6blVjXWm1XCqy7dm5LwwOMJAvHlwO15fTfICbCQaUb6OE1iW6PrCkoGrpdK
	 sYqRTxIEo0z8HX5vSjFoaKknkHAaQJQLOU2ahYmJQjdEh9d9kONPdLsUowcf8LpKxY
	 lQpI8F7HHegn71y6cE332g1mBmRUgOR3ALSsFGx548Ddq0FYiH9yP+agO1cPEsufRX
	 O94xp0BtiZE+1FwJxjj0k3z+Q0wGYkUyr7av+WDDjOU/VyvOMVD+sfuHQSo4MspH8S
	 yM2pygjWzyag6KL5dlyItai11nPTqcHYsvFFfFni0NCpjamd7+Gt9mNUNqrG4Q+dbT
	 EEB85slukLs8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED3EEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 11:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168691494867.6899.12406170699827516708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 612bca973f513e1c1ddc87e1efab154f023a54212a1289b7610aaf5f138a57e3
Date: Fri, 16 Jun 2023 11:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686914948
