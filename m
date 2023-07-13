Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C56963C2
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 23:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 29DC4C433C9
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 23:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689290949;
	bh=X8ozNx/3RFhvZlbBBAK2UrYFyftf71usjB2t7vVGeek=;
	h=To:Subject:From:Date:From;
	b=l60Myuew1JDCG5pdCiOnBityQ1hdAK1F2nCOzUsHof2i6NWbEdbkAEPnX0cTxNoKI
	 7xBNh3OL4XzMMqpvcD1mRG4UxvdLT/1Age17zyD43KTU6aeQIxGLqwv6AM8AHWgjVG
	 vnUT0HOjnBT39KTsD830fzvyqhFS49Rf8ng1JBzwoKEHOMpSPESwwblK8+h/RsMAo4
	 YL3kQkc/p381C7/GiIL5x4XNxzdJFcHOBXc04E+wl0PlUT0LXzr5tdTMwFV6v+20ST
	 bxZ4+AxkqHThFbjk7cmDqFP3HU3zjOwQRQXMAcjmJdRKCTnrbMYtlxi4IYwovF4PgP
	 vqAbe4U+gr9EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B40DC0015E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 23:29:09 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168929094901.28069.13237001559474010159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa108d6eeb324456f6ff6e72643c8ca9c26802a9b0d10d804bf6c93b51efedba
Date: Thu, 13 Jul 2023 23:29:09 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689290949
