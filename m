Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4037F1840
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 23:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD303C433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 23:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684539485;
	bh=hEik8Twu8d4sHz0ulBu+U/cNd4JvgD66V0qQ04XHPbI=;
	h=To:Subject:From:Date:From;
	b=MARaOA2ft4g4EZU5QF0i4nc1551/il3kUHuBnr/XeXgp1Vaq2ECA9oEw88X7qXjp8
	 uu2JS28cCpOzwchOr4k+IeWOlgkK2wDzGQ3mTfPJ8JgL507C+xdsn3GZFe/tG3rcrr
	 Z0WdshS+UzPWO2vKdRSelhwWTPqe6U8Pxd2lC/3TxFaKyWJ+aLoYck9O/Z+78EeaER
	 /1N/MT4qcIelIwnZEbnwP0+NIbuDaOouxomzjooo352LLwuLuNL5CxNw8SFQ2bpTyZ
	 8XIWS2cZUhYhoYJfMZJuFCGy6mmj5z39y7+P04w0+JMeXcbNn+/zsy/v5zcPb4///z
	 fqqzX5L5nmVcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFFBC77B75
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 23:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168453948576.21335.6607533082681997931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6b70325cce2922283dde018accfe37edee0806b48f39ec4c16d39ad4c31769
Date: Fri, 19 May 2023 23:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684539485
