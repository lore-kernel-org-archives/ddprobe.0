Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C5610FB
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F601C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671444087;
	bh=piSHfxmdb6FcnBtxuubxvpbgFBQIPxE/q1xdkP/kfjw=;
	h=To:Subject:From:Date:From;
	b=MmLlpKkAyxAJG+4+wZIMRrBb6cBtvlRNjSbFa2TMWcc3sMt7BlvVTjzzOETrnLL33
	 hODazWAvjDIK27IsQ/daSkSG92M8xMyXNTTakPeYY9S8kRIJl4e6kFOZH4G0FcEJFN
	 YbdxMGIMCB8fIgK1czuGE9BcSZ5rMtN2D/nTxR4hdHcFipH2B2ku6o3BFo5qYYA08I
	 Sph5gjgRytY6pe8n3WKAEIEd855BWGmwVb6Xu9nlZSFDP5ANIxWP0hIe2AzDdnaPcg
	 dmmfAvH7G7awz4BeTTURi3UBVyO0KMHCoOx+cPnKjYYlcvOd88TE55XGGDGDKXNU5o
	 Or1fQzXf5Z1Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654C1C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167144408740.466.1416025185941645126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf59fe7d07d4b91f028b069625fa89720d75c87787cf75ea53e8814a9c36d73
Date: Mon, 19 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671444087
