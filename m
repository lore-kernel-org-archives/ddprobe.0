Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E7A2F39
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DAC1C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667885454;
	bh=Td56MU7+1DTyBbW5sRNYPJzPYWv8+0HYeEKfQxzuB8Q=;
	h=To:Subject:From:Date:From;
	b=JpLXF0jhBHx8Nm6RGL5ac6IJfln7ZRuOjAG96CpFx9Qua6UxJE8ttTcd282wLvWSM
	 Nq1r7AGL+yrh9yXgL9z8PUdc6xuDBL0Oo+uYVR+ypRkE1Gd32G5RWdsrUS+6SAt17Q
	 2RFKhBEm25DgeFUJaOUzJhy17PBO8OHkOAhw59P+YkWW07vlw3ws+L4YT5ox498W8M
	 312tpIibRSWWrU9mgl94K7zpTzvYNTPTLlumcLxihIYujcytQs/rd5dlevR9nRlvb6
	 JxesH84G9lcxthBjV0VHi9nyjw9+pGvJHjazzEuWIHvtxmrV+3V7LILyn4lq7stNDf
	 VsuHVKkTxQSVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE8DC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166788545431.10495.7919866180165063073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a3fa9e3a1489cf56e4da3f6002ddf7dd5b6656c2abc05a04e630bad6da7bf3
Date: Tue, 08 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667885454
