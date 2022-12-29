Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 011FCEA1
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 993D7C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672282287;
	bh=lZWtM/ZFERdpffwYB/MLXV5pzYvr1XpnlhxanvwkSE0=;
	h=To:Subject:From:Date:From;
	b=Tl43iFcY7XC6HplteI4oLPh+JhXB3hTyqKY+ixY4fCpAf9e7JtTcWk+odNwWJHkIa
	 dxdv7z1y2SgSz1Y80PNAi9SZD6GSLfrl17crbODv8eCZpW5Yy6nY2XA9e5o+66Ujsk
	 25wwQPC4cxRs9OogzcYpc+JBHi3Yjz1z1ojc6gQx+6w9n5YYjqFzuqDMb77PfpVJVq
	 K4wi4myrAp8KCkrw+KM29QFWg1OtodX3fwy7rN7GdwyCmJZm6Y8u7kEQWW0Gvc7tnx
	 ToHrC8hTdo6oyJxFuPzELLjc5v6qkOn6RxoA42nIsFjj23xMqB8gPBYTzV25MuvgR8
	 WLXU9aJIMK4yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78275C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167228228748.30400.386743011730987866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0398cd674dff081eae196fbbe775a38529e83eef1e05e23145288fafbbe20aeb
Date: Thu, 29 Dec 2022 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672282287
