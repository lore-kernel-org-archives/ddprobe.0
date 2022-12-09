Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF853214
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77115C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670618487;
	bh=sicsUbqEA+eRi839vJkt6PW4jKOgkL+cbmqfYbkawl8=;
	h=To:Subject:From:Date:From;
	b=oTy50sK6ysFd/lEu/YJ0HqXUUaHy0GXYH82Hh95iw079dIgrxH5Vmmz3XVoKDSLC2
	 XHFJsJHNuQlqOJzwu/xclzWk3IfAdrURV0YpgxZNwR37eFr4p629I9bSEZlsflz37e
	 2ssHmPZCNYqfrtT76+qDiuDcZvPlodzO12iNkB2CHx5O7Xk5/KkxxYlf+gL0iJYl6q
	 dCCS8Jwgrnr4YyLt+axNt2Cey+HpsohFRCBwHwNB9wFoSztZ79vvbJiFEM2GGKqes2
	 vKOTVtrSb3g98atDNoEFolbjTV7GkFdtnUoug609htGESEf4PKNUoZIHATpJNX2FdX
	 yBbBZm+4n1YXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60442C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167061848738.2553.12210933507539194812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1589c3c9565d9b0cb1275ee8cd5659fdcc86a24d8d7cf5d6e2262d4e396f132
Date: Fri, 09 Dec 2022 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670618487
