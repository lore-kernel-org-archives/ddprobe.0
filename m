Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C4918AFF
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 13:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2FB7C433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 13:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689082628;
	bh=ZLkr8fVJJj8CpEeOPxT0S22dk0a3XMgUeBvIOVIyMnE=;
	h=To:Subject:From:Date:From;
	b=QjuSHRfPtO+UfB0a0LIWc61A1PDEbuHNUtkcTmzA4QKvzBEJm9GXzh0Phn2TnThUR
	 t4UhByvwYUIWsEC7xd5o/HJa9uXQyuUiHHiiqzcGkRp7ONXAeWFAoWz0tAhsbvmu8B
	 hmmEwwKTxFqifTZkyBON8y8ibBQD1UcJlX9sp09RKGXFhR/rid7YM2ql2HhI3QqwIe
	 gJC2lavV2hiYcafEhRicq5vS0Szy/M1SCvZfBPM5iYOm2OHuzXDLnPd2XtvCBSIZnI
	 319FCV37lmfgqqpCzZXXP8ybtiHkSK6nPUWn7doGKvdJFWh7qunbFH0U82LhsP2gU3
	 6Ol/3jCvtbtww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA79EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 13:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168908262876.28011.14918009501466887557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ca53b27dbbe0f5b5e7d36eb49edfadf4f1b9708ba6f760d23653df15f5cc50
Date: Tue, 11 Jul 2023 13:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689082628
