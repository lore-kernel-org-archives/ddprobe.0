Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F104022EE5
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mreE5EK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80725C433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704378496;
	bh=ipWMrVNEpRwSrqxY6rIh6U9tDFtFsnDpMvLbZBW2urw=;
	h=To:Subject:From:Date:From;
	b=mreE5EK7qFekRrG0SHi69vQTq8FMgw32cn2A336u0aS7DHWKWO5AVl4TFVgdqL6xy
	 wpIV8OO1V73bw7legktrlaXOrrf6l/i6G44dkORhCLGWSec6lDcJeWZXteKmL5pkU1
	 E4El47RFEWKOmdxKnxGL4SS+gPFifkk5Ikl4WLqQXeR6ewiEyi68cLhZrXeiQjoEAV
	 t02CLodPBtLr0oLJbwrdoYrXjfVISGwin4QtxDSMaMvs+gn8SuL+31QLoRHHW+3gt0
	 DCta6Lkolk2T2OwaXfZA9A6349JMfjoaQHJBL5soRQB6PNotv31CNenOYEtIlYH3sq
	 R1rKKE8dIDthw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 603FEC47073
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170437849638.4949.4847083997833422463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 611af66af522ad4c364bd7d6996d399cae27c19442322ed33bd3a81862fae215
Date: Thu, 04 Jan 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704378496
