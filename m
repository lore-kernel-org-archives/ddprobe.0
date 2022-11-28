Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9280364
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70BE5C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669603854;
	bh=kwwyA3T55ES6nf8h9GiuXB0/UrCYBYFmsqgipoCK+Uo=;
	h=To:Subject:From:Date:From;
	b=Zuj7ZNE5vYLNHOa2F6ysj2tP6QExegOi8KqxPoGZGs6TEOE5ogvjR5A0Gc/wo/LUv
	 9mZrIKHhobipbC+Nu/75k2xknC7pUpUqwwx+iM9KYA0TFE4KDtBbwRYDJ2COrJPunJ
	 pYaIjidMOtkvL4tCtFNEQ1KLSHy9Xf2PTLwHdD7jhzgYobl9WNB4aQB5Ri9p9PLQDR
	 2Hx7h9KWxf7+0f7XCTqDhGsrRZEyYqPLKGmvTnyRiblDboAZO3UhK4oih3Zgcp8ZKi
	 rLNxQ3wHLmxLEd8VbQAuob7uJ8DLvRHCbCRYAB00hHrkg1MaTU/5SWor0BvQTzSsbt
	 JXZ3UnzZ/agxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56051C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166960385434.8092.10807943484718690783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d9b0b50c37d154a51c026e149405a38b360477f8697b3fd7d1cfaadc4384b06
Date: Mon, 28 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669603854
