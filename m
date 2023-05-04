Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B8B4A35
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 17:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 094C9C433EF
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 17:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683222846;
	bh=jgHUXIgIyO3g+B6IZA/e1biigWqFYuysyMCHXUjbLEY=;
	h=To:Subject:From:Date:From;
	b=qFU5kEaQ3faZxNGe59baJ7Tsk6fih+woCKSAIeC8KS1vMema+lHdZEcFiE6aPpjf/
	 FRY0lcVC9S5yWu2roquH9jvpBt52oHrxeDCpKlczl5TeK7BDNvjiXE+8siwXzRMkGd
	 d/YHgIvAqE4Wv9Jzrx53hUtcnvwpVaIHcSwgJYjeocoB9XHPT086uMllR8PN2hXZjg
	 og/xG83XIPkNvOkfB2saLdUX0G1dAUL1WmObt83zZgluQTxOqy4A4QwLziKEDOc6gS
	 PFECrSCjqqN29vGr9NLf2hOxJnunyrq+JmcdlLoX39QuSXu7apfbbiaxD/jenNSDPT
	 6JnqJDhRfPEuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C27E0C77B78
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 17:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168322284577.7466.8259296552562420913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc82701c22b114ee1d2f6392b18d7ce411505d4503af111b70309db3d7f4ca12
Date: Thu, 04 May 2023 17:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683222845
