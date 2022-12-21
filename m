Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C620C23A4
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F1A9C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671621087;
	bh=T3U8d18k3hRSkFM557xzbPvjBCF/cMqL6QlkEVnC/4s=;
	h=To:Subject:From:Date:From;
	b=u7DPcJ2g3baLLawBvBf42tGgxU6hRAOMc9cJ7e/bYpwz7hb/Te7uGoYlFIgCEOvY4
	 JmKPzWvcr1wT/qVVUP1xLd0122FbFYo0XTcUJkJrHLsLfqpvmDNhnal2wEJBaRxH52
	 ZGpHjds7qPITyEAaKw6QSzlnJzGf3W6khs7G++7kQeUHZHirqlYrXiVswyAJmejblE
	 8gQOcfwfBNNOxj4N+GA0TRBOs8NqgJsqeo8aeNq4B9Ta/mMxtVT4blTc2nz+E1izal
	 n2OvbbTBo6/+QGk06ZuGT2oUsZdHh5AfT/mNgoPFIpprz9mM4hoXYHd/uFRQDt1PMz
	 GSoaQPdhoRddw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62CF7C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167162108739.32345.15364527757801101460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f35edb24d44fbd517e559f1c38bb4f9ce4d8208ce9d3914a31b2df42199006
Date: Wed, 21 Dec 2022 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671621087
