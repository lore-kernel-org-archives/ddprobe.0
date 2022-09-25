Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8967F
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6862EC433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664073653;
	bh=9QpHIRrf92PTIRUFtets40/UFcBoXLg++uM76MgFDeQ=;
	h=To:Subject:From:Date:From;
	b=YhkfpVKSnQKUJMwKN/Zp8xmF6WcoDn5lJAH2ZJWDtap5h17HUk0uKaAH1DASTxwyE
	 f9APupBOIQuCUOe2LFulPIZtCE7noaJDy9mS9jXvCDY9e1t4EF7tlUr4WSg6j9PWZT
	 EiF33sWkVFQOOGUOVMhD0yI2dKxp0vRibUXl2JOnftpFVvqLvxMCvCa4wjEab7iZAU
	 aojt7/3m5LG3kSKFL1SYoB/8KNQ6MlD/LUJ3+nxI2A0WtfnFC2Uiw/MEAoxexpvszR
	 gGQcTx5f0SnmxDUkLp9pQcoj+D88nM94lFG+vQ0UH2SGWksvAxJ9E82c07RSZqpMuO
	 e2qHCWfnNYDFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E2AAC32771
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166407365331.3964.5706411618502113972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f9c2fa2b3c6e2b9d7581ff43d3930d807b0a6a8ff08f658a2b96c8077f9ddf
Date: Sun, 25 Sep 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664073653
