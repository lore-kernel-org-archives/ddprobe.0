Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFC657C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AD27C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662633053;
	bh=TUEDCbYIlzMeIuBvcK2lCqQL9wBJ/wgPngmYcmvNq9E=;
	h=To:Subject:From:Date:From;
	b=b0pQ6Pr/Si9Qv2vBNefqPmtf4s0nAU4twCPhk5XrdSPCvUn3Bff+A/QF2Yfrm2dX+
	 LxcUzKtzSCDdAoIZJXrs6tgWsiXx3EOFfRunelSJg/3JzfwNpj0Djtjt2JNwzlUyQd
	 +qKzqXfAy+zSqF3z4GqtCWNFJCaWMAp4GLDll6Ywv4WWMX5014KJSN7nOzmqt38OwM
	 tKJx8edRjlQ20w2T1LQJ1SA6mBbP19Z/3oeuRcz2FDuMcodYkT2I7UZztz5gfbmZ0u
	 jDFZ2vkDozJ0rC0rgXGL4ClT21u/tbJaAAjV0smFCa+wO6JKOk575htmCcHlQp6RU/
	 5I3fxTU4oi/tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50AEAECAAD5
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166263305332.8156.15520557033725716406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ab98a60c7f2c9dcf27a335195bbb7e7a92fc6863a8c87f38ccfce0e2952d3f
Date: Thu, 08 Sep 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662633053
