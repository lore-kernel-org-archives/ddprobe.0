Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592C823A4
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 04:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbVBEEMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE513C433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 04:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697432228;
	bh=JlWXaXLqquLWEMNKn+M3X+Mpu0upd797oI48GNx/LCg=;
	h=To:Subject:From:Date:From;
	b=rbVBEEMDzKmuYWtPX/FQe3NUss9Le1L0H+VPDyEpB12ingiwGqnFhz+fivGkV41t4
	 jmlzMxbM+RNVpW17BC/nBkbpMrYUI4+pFireBaiAR0XCzuX5xcQJDjtkn3gPqcRLU8
	 B5Pu+k/xuE4j1Pn2x78r7S5MolkF2iQjSfvuoGlh6/Jr+iYbXQDONlczMOPGEIW+9n
	 d75rOjstnQUoX1ujS6iUj8mqp0gnmniwxIYFW8aqk1OPIoHLeh+J6w3XOmzDD1QTdu
	 qm92jvF4LKnJFSXtGEC7qDMrBxkfi+rqs1GqdaYg7Ho/vW1TjWxI2X6/90NrIVkbkc
	 R43rMQEwi5XhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB75CDB474
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 04:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169743222869.22013.17418041772553879200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c807a23d6209e67b446343dc0c9fbf4ba2b5841e04f5a9b11d532217e6bc7bec
Date: Mon, 16 Oct 2023 04:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697432228
