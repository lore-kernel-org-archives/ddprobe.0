Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A20A4D
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 06:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE20C433C7
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 06:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693203248;
	bh=40mogfITr0Fzau04gJ2w+RGLmR7Urqt40xgCZxt7+rc=;
	h=To:Subject:From:Date:From;
	b=LR6xMgO5lbr0xGvVDKtuQS2kOkIzyTPeXnevbhS360pOg/7eB/8ciRRTppnZXp0af
	 /LFAm3R6hbCQ0cKvaI460X67RlQL2bYUA/wEPmIiLg8ZAt+pvXAab7mEnykdgsLnyx
	 mlmqEqTja8D8nu7OM0HJdWl/rJ8g8sGKH0zGAaWw5D3W73dOC22l9UblSEd/pY6HJP
	 ijY6BajdOdbJ7QLN2/qUzBDeYUITgJoa/u/xuKX61uwpe6PxBgKrgDzMsQvySciiNJ
	 1I3T3HJ/XGWUd1HZjzRiE25vTQqsmWvenSnak3i5b4QeENtYNql0Mz1CaE9M8iqUBT
	 oj/Y0jXJKfIuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC6AC83F11
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 06:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169320324869.6200.9287730521243196080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85351210e2b5820d84933a19208ae923a43d5c9544d4e3cfacf5524732533daf
Date: Mon, 28 Aug 2023 06:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693203248
