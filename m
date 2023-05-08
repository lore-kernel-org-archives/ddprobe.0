Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461FC154B2
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 22:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECE5C4339B
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 22:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683585005;
	bh=1t1HBKxHc2UrcLtFESuiqQZIvHW9v1EqBI+SeWcgAT0=;
	h=To:Subject:From:Date:From;
	b=O281W2p31kXRtu1sEpQHaFlh+uLXl+ATjJyXiHViDRHVxtmhU3ggYVqqiFqtzNhj/
	 M1u7P6aT1841MNqnJOsAXYBbwqlnjgVwqDluw7kxnnDtx/qebWSNb4jR959M9+ZBwr
	 LGNTSQUELy3o44WlZ10xmoefdUpgt7OtxhLdNg0JjKupwD323TAAl7MVLE3URtvdAq
	 PJ9T8Yg5VDFDLE3KhF2+kMKeBRWR/MjklIW4OFsikwMaHh9s8wLNfQSMMy0DJPOzlr
	 Bgac2INbbbfXbPoad5MpL7lmHN21tCtzgF3V9lL9KcTxqQOYgQ9iyqAb6TuwO6ZLT2
	 /xxALp9DSmq5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28D0C77B75
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 22:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168358500578.10780.7644784813420592667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29563ccfd30b5ef313af82f6a8d9da33d886550cc61420a9eacbcb607386feaf
Date: Mon, 08 May 2023 22:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683585005
