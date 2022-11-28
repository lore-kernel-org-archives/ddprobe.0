Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC30763A
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67827C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669620654;
	bh=Hai0CG/4GtZoP4brSpSjdD2rjYfThXyspn2vQ4XnsUA=;
	h=To:Subject:From:Date:From;
	b=BRITGU49ReI0Va8K6KFV5F6E1oY9ScmDyl/Q8MpyCUmUXIpGhdsC7fezBoepHuLPA
	 +DHRf/Jt6so09OxlYwRfexVkZWYUf5yR2uNPFj6waGUj+l0m91zfF01u++nXYzN7N9
	 Oz5F1Nq1NPIeE6bvvxcOk1Wrob59vbutGiAFltrmCytKyuu47Yz0awJ6xuhy0oJ9qc
	 nlowZ0eqtTG4RHVmR9sQy3IeQLz87VUZPzF4Vc0IWhaHVkHXpA939CtFqy6HwO0rgO
	 krgcVs7+chnaXsAfF4vpgQeyc5BLSkk0uwBSjtPtRHuicix7j0Io6v3OLPso/LnofE
	 2zVqkZATqwqFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E937C4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166962065431.2842.14388331248325277330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806b8fbcd74e41c2a9e953a76c0019cec6df1b8dafe7b8b78a5fa591bb5eaeb9
Date: Mon, 28 Nov 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669620654
