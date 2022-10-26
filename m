Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30D37B
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E5BBC433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666827653;
	bh=gyvNqaaqMFpMJ/A5fsOh5uXuh3LZKD2XgKzNwBgGexM=;
	h=To:Subject:From:Date:From;
	b=qprwqznT4w48BoBum0shEh5Ya1wVSQShTbnYKEirHT+2LO17UHUiLZCnG5ps8Bow6
	 Gue3uOvR9csS2/ZaQAFHI31MIgE6nLwbDROXpYitVo44azL0WhaPNQySPwmNqWtYAJ
	 vlR/U0beZxZ/VZqLg7fl739pwBd5z6tJJXsCm5rSgo+9Z5RfMMG0B/Da9Z/42qRw9X
	 vBs12Dc2sXmB1gp8Qw/M0AAF2b+GUKaM33zCPJy1gVuNf8WkZL0vkAvOfCWRABnZkx
	 emKS1/NwLFuuAVyPIzhSO3znx+v3ZHQzzz2cuvKAsKZPrq3wQgDrVuHxeMd41x+Any
	 w/A8aVbGlbEVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 504DAFA373D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166682765331.30038.723063720423446103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca46305a2f1ec377236017cdfe98956c5c9a43e936576b9bfb2e1721aea55337
Date: Wed, 26 Oct 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666827653
