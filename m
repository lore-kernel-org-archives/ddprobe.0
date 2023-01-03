Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1F620E4
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 863BBC433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672738287;
	bh=W78Fb2XPA6inBZnzwtNyRwDqozIudg1Mzk1Xm725hDI=;
	h=To:Subject:From:Date:From;
	b=gNmadAlySYDg4JkczLU2yu+xGUFS1tEbgBr5zWE0EbixicRqJK4FKFz73QSB0Hqik
	 4lLcaVGbrYkUnIsFCzj2kqanfudKhqgXrYghLhICD4rj9jZQcpgfrXP3COmKIgfZfi
	 Cc7NYnx3wiawZTW62GXNd3yi8DkiSAF+eDrifeZZsFzbOMDSVDwRMMV1Qn2aerMHAU
	 GUOKN0dkxI5oUn+vbobtBrIVx1KaZk10ATQwaUav+4BeejhcOg31IEd+/MQ5WWm5Wq
	 +cnmcg5s9Ql3vhKtNR7OphJzIfljPb0jL14KiK0JHYZUsP2114+8gJ8gyrl/+rA89f
	 DI/YCHDcQlwPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E7F6C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167273828744.26699.13891938731631257212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c7c1827b43d9c15bc01ab1479b39900c92fe730c14411d6782eebeff12ac6f
Date: Tue, 03 Jan 2023 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672738287
