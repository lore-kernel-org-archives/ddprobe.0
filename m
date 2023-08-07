Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0E210F7
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 00:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC683C433C7
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 00:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691368388;
	bh=h9pzzaitQMdpRWEgFZTFxtrP0s1wMbdR1YHhXqcVYvU=;
	h=To:Subject:From:Date:From;
	b=cYeErQ2r8x9MWr55AXWQ4zV7Zwguz6Yq9NtmIXRJHqq71dgdEiBhRBHpibU0ClMnL
	 yuKJ660836dOOOFeLsH3o/LmsnYsSkxTex6vbrroU4Vcsjo1Gt32ZAnpuOxSL20pld
	 VJLjkQ4/y7ifxz53vYDpWPlx/A0CJjj14L6J+WM8kup8YOUDZ81bQHBit+MMoBMxcK
	 60lpbQD9XDWbEcLTUeFeNWGL1Mc25x2HnbRDhQkqv7zv9gKuiA2EF2Hknt7jlvg2id
	 H9l0CocEunboLZB+dlYbWF+tLbHV5hVqBHc+nxW9cYCkv/B7Tv3lkJJtaAyuiEUY88
	 IKg9ev1aXXSuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9B9C001DE
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 00:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169136838868.18298.4428515133800691730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a073b292d581c7e6a09c93e70904d905febe9cac774c693ccae6d4603b1cdc6c
Date: Mon, 07 Aug 2023 00:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691368388
