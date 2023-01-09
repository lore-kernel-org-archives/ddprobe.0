Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B392571
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89B91C433F1
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673253687;
	bh=hcMCj5shYAypNswtHxUg75sAkPl/dtl0MxMPCPb2TJ4=;
	h=To:Subject:From:Date:From;
	b=iTUDevAivwSHR6x7huaUmAuHnwW8NCJhkwhH0NB0ph3zfE36PMkBJWrrkJEEu8sug
	 3t3FEluZh3sCxHzFIKLb9qSr9De287+DZZXVMOVz/lUlLeDeA5zdWF5cnLxFTdC1sI
	 ++qa2ltziW4AAi2lfLsl3BMM+k5t2LowuGrhL+7YwrqyMV8QU64slsWpvOkQ73DH1m
	 MS5UrHW3Rfdpg0anK2nRwbYm8rLRntmezV9DB53l37IUj9JCyNud+3y8LplteoOwF3
	 FsXpYAoxx4Tw4sTB3lfGi2ir+R02aqN2xHrgoyh7AwJ8mlLZ5O287VFtBeJC7NFBgE
	 G1Og3BCHBNdlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ED06C5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167325368744.13478.6633921136743858688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534774aa18015f2a5b453be4b38f55c47e431ededd9516e64a88c145fa1d6a08
Date: Mon, 09 Jan 2023 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673253687
