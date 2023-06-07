Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E5D36C
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 00:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5620C433EF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 00:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686096125;
	bh=LImjYMhud0d/9tOutH39lQYSjlsccYLp/wYchYA8T8M=;
	h=To:Subject:From:Date:From;
	b=o44sMlmtE2zNpIKXD7s1PCp1eyG26jZQPpeOyo8dloZl6GyhdG2KiOOvQ/woczs7q
	 tvzVA+YAO3xefwYG4wjvwt5N1QiePDxNT3/POfwCy1E4/GRb97+DthfWIiW5Dzs/Sz
	 2hqCfv+OCTib4A0kVlIi11J1x7oybsT0S1bBnJPAKWtBKvwQBbC6tOzDKUHCGOfQpX
	 MkjBQFHqsqkZouag4qsF6n8Ufzh/T7YhFYceMC04ScCPdYNOSQmsBZ8ySvKWDQCoI2
	 Bpufyk6m8IGoE4b83SKSRo41PySLuinD/d2A66s1YR1oYEsFhPeudoEBXPkYQAzHkM
	 eNfjE9+w56r3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B835BC7EE37
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 00:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168609612574.13711.7259480233177150584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5fbfff39ba88a40b53d54c9ce2413f7e25bd88ee8a519ce3f7a9d7d3bc8b1e5
Date: Wed, 07 Jun 2023 00:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686096125
