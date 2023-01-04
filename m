Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4F5A4A
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F1DAC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672852287;
	bh=FYDkbQK82Ci0XgNe7RKOeHQLqOQDNk8gX3oIu2rJoeI=;
	h=To:Subject:From:Date:From;
	b=ZVkLHJ6AZBSH8RXiaLJc6o2EnlIFOrTlOFRnSqpgfjWCytUkhwe/coLrC08fibdeS
	 fLXx/MYuPE1As2oABs8+wdOlrB2spf81rh/LADFGoCPjzDpJi8xo1qL5WS1UGdlwD4
	 dOAEp+mG+LSgR1ZH//V/F0R0kNnXeUVB6pAyvVhrMX9s2cfN5TnWTFoCxU3WkFKiyG
	 gB4KZlfip4SEm8WAXNdyT7Rl0OXRuo4i8OQb+oAW1J3LyO5T0KFzmhNz//trDdXzlW
	 yCH2hYCAjoYriTOeCrZDsWNFyrQZYLt/n4rYCjbQmYTsG9DZcsE96LK/p2twZ0IO0y
	 lpDvLgP/Z3g1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B7CC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167285228740.6036.12252319734887523413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c3991375bb48c1dcfb504fc193daabde142511ca86b5d2774eea633effada8
Date: Wed, 04 Jan 2023 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672852287
