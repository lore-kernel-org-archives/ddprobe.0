Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC8E7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E659C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666656653;
	bh=JqMDlGvy2eChEbJ2RL2zzxgwgZf5euOZht/ck9hPjiQ=;
	h=To:Subject:From:Date:From;
	b=bQTF9Z8ASLoSI88uxinFXzsG9gsekhtZunlP/WzNkqK74f9r/haaC8WLof+KgJHHg
	 j9aXLjBNiJouzRACoD7VWw/wocTzHeYpyzsZxbbWBladv1JH9A/A06F9C7m4oOlbJU
	 UfJrD+qGxVYvAEOcdMSdzl4/Fx3M7P0tMC8gRxiUCNeBPcZD+pu04poWMri+lMQMjw
	 gh4kxVvaMezLlZngTHRunKcLmBVpnfZxpUNm5qFogfm+M9XfKby5Hyi5qdIErfYpYL
	 dsz1MpDT9bD0NhmVMC14mee79oW17VDjb/OXcSfEfpq8facgkWu3fhJxnFJ2Wamfcp
	 8O4aPx+UOibGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A36C67871
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166665665332.16029.17471124628461424396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c603fa1afe03615e10180fe24d3240d7a92da1c271905f41fae9c6749be0024
Date: Tue, 25 Oct 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666656653
