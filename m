Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A8520EB
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 06:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71DCC433D2
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 06:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684391165;
	bh=Yw4kjg9jPdcp6t+nlWrWyx2Xczhwyp/ByihsbQyiIPo=;
	h=To:Subject:From:Date:From;
	b=PQ5JU8WGIvNVcvRnEENux3QqKCiBjfZD62xTaZJuRxitysaiMavCuN+rsRBWRGUw7
	 HDO59lu8Kpoui6j8ZgsRvG9wduD6XUpKMsxixbZXPn4rmZlh9A+Uc+mxLbDpgI+1jf
	 CKr63NgPgGV5uE8r4bnscd/E03Z+8J70D+tXcHii1IyAtaw0ZO0NleIoOem00CLdZy
	 FEHqRer86ZefbSzJuXnP2CGhiE+9copK+7t+lnnU2Geoxt7tPC0E0eGOFDcjOTqW+7
	 6GABBwHi5lDGNy1qBG3S8ehIuzcZWlhAMDjXZxC4UCdzgloAiyl5e9rLanCklj2OGY
	 bKLV/EkheElLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA159C77B7D
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 06:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168439116575.22235.12337712290803176383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e6c5f8ad7e1942b048fefbe56003eccf20ec83926e3251ee32e00e7373a6f13
Date: Thu, 18 May 2023 06:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684391165
