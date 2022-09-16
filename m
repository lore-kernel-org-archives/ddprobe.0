Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C442A5C81
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72BA4C433D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663341653;
	bh=AjJOALQ+YJ4Y7npL9gqDLxxUBO+vEuxzd+lMiIIJSAw=;
	h=To:Subject:From:Date:From;
	b=BlGrApCav+qVv7tkfxNxrHZRtYr3WngffWjtCOyT6VpbiYpM5BKxTPD/POLvYl7Qt
	 AsnZwfknJF84qkc5cV4BzgtPFps3Mu8PeUJCtx/0jXwTqy5GUdpjgHVKeI1w0C4nVd
	 3XZfwdvcyCyzbsBx5JMN3XR5M8kzywdZzdlzi97Rn7JQ70Fe3EtdgGpGWiGCG1wd9M
	 7BjrhumadEitqFxcB5yjSnZ6WHnGKxRf8tZFX+cA0cSPYY9mGMUpw0lnxEosZyqoyf
	 NNSbiyYEY3xqCyrxUDe+qiQ/N4pCak7CFEMM2q4i+9OQ2oJ+sjVw7RGLBCGMfv7NIu
	 pAQaj8flMcdew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A60C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166334165332.28353.3187954996605276168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae5299b6925399dcbf19a052c357ea6e656a4e5fef5c7d933b5c49b630c3f3e9
Date: Fri, 16 Sep 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663341653
