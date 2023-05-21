Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353C6EA3
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 08:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE148C433D2
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 08:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684656725;
	bh=mXo+gKTPI0/pGWkPuMD1aNQu4Fp7PW4DoX+CF4rCmL4=;
	h=To:Subject:From:Date:From;
	b=At6cgkdhmDFCelJSI4FHD+Gq2VfywV+gQpazfWzqKkmo5rl0LHbaTZbBrWD8wqjGX
	 RN5ibkKYno/AYSr0ZMe7d8pFbk9y2m3MgQPCGIFUTi/w18x7xpMcY+4OEFCotDdTXh
	 ohQM3m+Z+oU688MBcCOTNWS0rOXk9KUe4DCvHabGryEHMp6ywKzrRjKG+voLNj8mff
	 Auq3KVoZuLl/vuSur64YDBlmoJpODd6BhOoWY1tCDdfnDqQvGvigEe0QtEzFYccBzB
	 GFsx7oVbjshKs/sK7xcg1iFInP1seXZT/x9PzKfQOHK372W37mt3Pw+6KTxBiT/fVp
	 3kxw3hXxohVrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39A0C77B73
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 08:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168465672579.32742.16875015619788023524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee0b23d13b5a12c975b406c5738471a84df9d1699fb7754043c2ed609b82cb7
Date: Sun, 21 May 2023 08:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684656725
