Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703541859
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 07:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2TwAymE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5EF4C433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 07:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697267228;
	bh=8j5khJ7hjUgAab1m9nu3PptQy2bIiQB+hfF/HdwyKRk=;
	h=To:Subject:From:Date:From;
	b=A2TwAymEW1IOM3VEyP8yAkvUuqPlibM9s0ZkH93+x4/1sVMnQGWSBotG7k1ryB6NA
	 BSKU1MioMG5FjCD6K1H2SPO6j47pMeDQg0mXZyprmtHxM4ymAgegiOyHqIFRtc2E05
	 d/gHbXsHHL5sAQ1I/7/UYvXIf5co/0XZw3HcJOvIdLWsiQ2lWTggz9YM7G2FUgDq2w
	 Q1IctypwbMPtLLNvTLmROka8afy4H2Y9tHajMl3Z70PlRkZQ2dYrXmYyZ7XQFyCLNJ
	 5uiMV8HlGdLVNQXA0/Mmz53Wr7I2cGJAhjGmwoxrLgEaUeaBv1b/WB2txKXDWBEvRq
	 BP2wUGiwFBxLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78EACDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 07:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169726722866.24248.10853736891403339234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa041c8e148d71017163339ff961000691342584383dc3f0b4cb84774cb5cfa
Date: Sat, 14 Oct 2023 07:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697267228
