Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319A8A40
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 08:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6BDC433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 08:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679992385;
	bh=KuiZ6NiVfjY7OZH2/EP1n0CRleAl1aHgOjnz2OzsRC0=;
	h=To:Subject:From:Date:From;
	b=ojgqks96GZTssrHsTOvyGTrxnWOqoJVaxywkjgndiLQ7Q+3bnnlgiKLzVylOfp4Sn
	 X1xjViWnMgwNh4ZoIZIOSBcb/DYVmhiEg9IfEepB0zWCpA+jEdgiM6/4HY7Gve7nJg
	 Raid+d1jDhLbpxa8vR6/6dZc9lPgzHuv3Ts2MB0uIG/uCah4UHzbGcaVmIwX6jfUbH
	 KfUwBSJ6Z3SCjKg3sxPsdlG73Vgld0DLnai5ONSX3DfBtihHTqoQvQwgObkyuGWAx6
	 TGxDRWabBIMdKgjqiqhFdl3fGgFWLmW0ybMwwSRxDkq34yylbgaVtMlbjK0qnIWFmE
	 jm8sn2o1kahAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C87C76195
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 08:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167999238576.12457.12224385923484604353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e04851b8bd2d5aa109a7324c168eb3b5ef0767fd2aa05b1d5ec6006095d616
Date: Tue, 28 Mar 2023 08:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679992385
