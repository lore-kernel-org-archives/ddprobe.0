Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DED33EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 20:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E12ABC433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 20:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681937705;
	bh=xQyqdtKiPQ0A1BL3LlNLn3VvOAwqHRdPom3H9n76VmM=;
	h=To:Subject:From:Date:From;
	b=OIKU29d+xZKJfgAvl9QozFvt8KCEzw/ldB2xs86N/r6kQIcYfGYpRlSVkZ5KwFW35
	 iTqCtoAhkLlvbyEQBNAtyLYZiiONKPzEhSEstao7o8S3pUANB+2YRhBIaNlhepfhmB
	 IDmVqIgXG01u0TxeB0iCCA+CuvXjavRQqWwealgAArCCV78ttxb4DSizxHVQGVVgCT
	 C3XlpeIdBkuCByxQE+TeKRGRZUImMs3pZ+GQtwh1cxuWPqBWDi88OMuEXSS7J+QIlz
	 532r6dAMkfwUbeRFakFLPokT6kVGCGQ/8HTvxWXOTD/b9kGIKGRtY7XUq1BMSIBjgu
	 ulAo/iWv9cEpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2118C77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 20:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168193770578.2078.13295999476092980589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55649cf2c8db80bd7f633a7858487603c7554c37623753a218421e118b125fb1
Date: Wed, 19 Apr 2023 20:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681937705
