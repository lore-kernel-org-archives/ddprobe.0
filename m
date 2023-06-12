Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F0620F9
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 07:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E472CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 07:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686554585;
	bh=LhGypf7qrEsBpNNtqhB5XMOXfdQ2da4ZWGy41PFs/jM=;
	h=To:Subject:From:Date:From;
	b=LWP+dqEScobGRKh94u/eFT6nMfob+copAO9aC8WLIJuauJb0RqBryFnaHJOTQP3GO
	 mJImAOX4DYehn+Sc46x95Af+EjbjO+1lnnBjI8hc3Ji4FAwrvH1D03NXY5JBr4mpR4
	 rFln3nPs2A9ouSeD45EVB+gRISn2hgUmkrX14pWIENRS8dxWBaL2ihxk7HBXDouVs8
	 ynHR6lGHsm+tQwK9Gkg4B2cuk6EUrUAjxdb7TMSl3xWPcnBkazH5mxUmi9ShoMEfyG
	 +OcEM3Dh7iiPSSaGfnpnLmz08PP5TDRpl6yHv+LgM87b/GZOL3Ss66CBaATtpNggq4
	 jYdDMfOtuLQwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC86C7EE2E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 07:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168655458581.28780.6824248820098306568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072f22b6033ec5a0e7e080aa48b51b5e5f8bc46c85f6ea3970436a69c1e69dc8
Date: Mon, 12 Jun 2023 07:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686554585
