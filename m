Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2913C1847
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcS1X765"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93FAEC433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703486896;
	bh=AF7uvCX3iQT4+B8QqtXjmzxmJCLQJUGO3bK4vo4g1Kc=;
	h=To:Subject:From:Date:From;
	b=KcS1X765SNF5Nt+CyK2PwhE7Ob8JWPKOxTy/Dw0AL86wkdnrXvbPNLgi4KxVffO3M
	 dWf8GQo+a48mPxFg2y0PRg9ypFik+8vFCJvhOemxtyvzdLefrb6hjrjBqnwwtXIh3E
	 YcPOYf7hb75H8GHnwJZF7P7N2THwjzz2hjcanVM6SnFzKZp+3+4lsNKT443AzQBq/L
	 deZzx921ZhR7iWkp8BjGbotstQk3SOyUotm5uJKzQl1iLUwbBXor++YlXaaPrJGo4K
	 CCKa3vdLUFo/NeesiDXhYSpApPIQvI0V8ypRJEUribZG07Rqr2gMrUXLpPkmnGRI4/
	 mGvDP2oIJ65dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74007C3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170348689646.27124.16875016654022142990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c5d26844614b5aed09eba22998f37e59935a326b02d7b0aeb33b5541020242
Date: Mon, 25 Dec 2023 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703486896
