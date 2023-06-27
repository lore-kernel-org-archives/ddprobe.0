Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E3C46A8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 21:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB012C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 21:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687902788;
	bh=MnHDP2l5jP3AY/APeB1SmlMlvbaT/lqshgm4CJxRx4E=;
	h=To:Subject:From:Date:From;
	b=m+JcO4ta3quduj1oOfC7OCzRpLw4s2uKr/+etNwnFJ2t2QpUWoEMwezOqivLMPd3M
	 KV+Y7Ak2p1FzD0ePd4JgghGPWt+etCvJsjxd7dCGaVBVA/+pJTcHO8pk0fAa1ErTy2
	 HCbTeHkXqxVgf0ZIaRcKiXAHNfD6G+5OMuJVvOdacokp9JbzZ3hfAMsvDQoV0IT0np
	 hyuyUdiSsux1sg0Baqi+UCFOdeidFowdQR7oXFNkbP8Jhh39/plsED0C4Zs8NcYpbm
	 ynlTearJiZ/TJMDO1ZPA2wp7fUpHRxFEsfFVm38ixiok8IFCVk43AzYVo9GhWC/eJF
	 xesg6/RCvE5Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A1CEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 21:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168790278871.31855.8167473934711075974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d192bf93456a0d3037f694ef0da80c5bc7a57cb7007175ba5c14810efb501f
Date: Tue, 27 Jun 2023 21:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687902788
