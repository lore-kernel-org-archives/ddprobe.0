Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C683D20E2
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E902C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663292453;
	bh=KJccYSw3h+cEcZP1NLLONZXr4jcsckYvLQ962W1C9+w=;
	h=To:Subject:From:Date:From;
	b=JeVgpHmu8t9nPs7dt6ikxda3iPUs+70Y0Oqeyulc5HEaT196lsk5ZkZlLMgnfIut7
	 IbktmMjOGkbw8vku6p3ZCyNQURlQSF2KbviP1iceTDx2kCUFr6fwaO+NoGgZCpUwaB
	 Oksxwz6YZurc+RoRSE2pmyHnLp1BEVtaRTxGb22BdkHXNBwkqbXAxuJ0UF0ejXGASU
	 XSKUvJQ9nSN2tcJJ9OJQdQQp3JCY0tba18WUAi45toCi82DmOvFtmr1sDNzT6JsvAJ
	 4c3UuWSc2IxanvjtEFZvls4fCXup/dhnrDrzuwZMHiwJC1AJAhkhU/jG+0PIX4b4kw
	 jv7It3uR9y0Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55440C32771
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166329245334.429.10202379409201528707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 633b95f8d0d6da64c305f797fee5924a8e994af66f6677ed747852e2129b0b2f
Date: Fri, 16 Sep 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663292453
