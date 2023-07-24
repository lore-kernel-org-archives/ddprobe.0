Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523B1EA5
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 02:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5116C433C8
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 02:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690167128;
	bh=CfvD/cHFGqQ5J1Rar8u/A4SP6wtzlZ0qwXfJj8Zr5xo=;
	h=To:Subject:From:Date:From;
	b=WKvRd2IMTlNG2rcgTeDqKurKNt38HcIYJSmaNO3QB8VD2C3mDstUEdhgwrj7h/nML
	 usI0PZMePPsvB2L08xeW5HN9YC0pHgLjL6FLMrdLsheVdIbmUq4L4YEkfoS2Zp1WqN
	 4kHaHvKEoyYVoWDBFmwllbo6EQiZhE81aAYoa+Wmh3S4D5NQGob2BmvuXrGzyA3D+P
	 surLNq0v19GSX21QHwWF8AZzyDXkzTO2wAu+1iHYBoXo+shwa5jBtGyG8yToQeO6jU
	 H0XI1G3/glMNAEf7HyWU0n5gxKDnHpwTdM6e9oPv90lygZrfUfuUY8mVOTSMx3jk64
	 aJWS/HQ/L+YkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7002C001B0
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 02:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169016712867.27691.5283742887076094675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f2b1acddece8712da00acf603cc3a3e4aa0e118d6d8aab995046c1c3806c81f
Date: Mon, 24 Jul 2023 02:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690167128
