Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5867E
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 07:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D7EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 07:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679644265;
	bh=wP4Nqu/s04IOHexx78WZXXABgms+r2mB9zuCafJ+TKE=;
	h=To:Subject:From:Date:From;
	b=Z6N0k3xstTwe+EUsezALKc/+mqe1o+DqCKnFdssvsKhTXwW1JT4smxjvMJV9aSHKf
	 4316Op8ZgAAhkyQaWf/bixUt/+XeUsoxCOHIPrp9L/5cNKS/D/uGSLucfWWxxIcSg2
	 Cd45sHaOoLWV9cjblbO0nD4jLGP+S8vZoLKSeWuNkDJx/8wmgL3NQ2FvhuIvpeFrlD
	 iKyBVjiaexsbye34kZi8ajekqBitbkrNhuGn3HTAw7V+pihQ4pG60O21zL1h0myt7x
	 t+Aof4j2xaePUfv6tpAXQ8+XAIFojfResMj6Hy+SeL1H0DkCy/CgwXKLZmQn7Rzbax
	 ZQ9EVN7REAQGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C920AC6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 07:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167964426581.19073.2380111402890880434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60dfd7de04bed26a6164e21ddbe04db2db183b9f9bb4073294231e672174448
Date: Fri, 24 Mar 2023 07:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679644265
