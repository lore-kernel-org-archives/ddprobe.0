Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0F8C2C6
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 07:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D606EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 07:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695974168;
	bh=RnvWXqFRp3p+Dam218kp1n5wrBhJxgIvXKK1AsCMMqQ=;
	h=To:Subject:From:Date:From;
	b=oJ+MIqatiDKnx0esQAY2CmNrHDoF++9Kvq2EujgXw3TGIUCaxm2aVMspVFb7sKB+g
	 wW2tv34u5qN6wJYLQcbD6SvmE0vRqu92n78kX9FIh97k3zpRp3kPLMta71wpwTnA4U
	 26QBqDagdW80L/A3D6Q+ACMmjjq5OyzUbL91UY/EwenBE5HA/GIMMtsNojaYaUhaJb
	 68/6I+GERlCtSGUhgjDc76xkbQtkbYKfokaGYr4gW9Y/U4C0VPTNuThrcKrG1UTEYQ
	 cpX77hRiPh4GBMxC9C139SwVduZeDOwAY8t9FB5nHb4KPrXsCRBUU4bPuO0R+pJQNi
	 C9CaXdxCAhKJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BAAE743F5
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 07:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169597416871.24255.1655985991627463393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34e1ae4037511fdadfea2bacc7fc1eae1c0116fb61d2d8bfcae7b6c37611e55
Date: Fri, 29 Sep 2023 07:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695974168
