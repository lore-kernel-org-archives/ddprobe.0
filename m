Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8E8107B1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 21:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7936C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 21:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687989188;
	bh=MM3FZxo+OJOb73MReYvimxXulOmrqcEU7VoEh2JfuKs=;
	h=To:Subject:From:Date:From;
	b=iah7QuqnSm5oZLxp8ab3yJ64viIWTw+7DyqzZMjMvDhJx8dPgkk4dYqNafHLCA7zj
	 K4QhmhpHOGnpzgNZt9vJZQdmUDc2dSZT2CXrg9WddyyrwGDxwmGx7tooHv7zMm9B3K
	 i39yPOhwOJT2oMtjJU5Uy7BT0i+KOKyJ9SKfhtdnsXUFNvW9eQfn/uKfe28+AvINeW
	 wLkrDi0DqdTmvBDzD18qH14rqHk/c7/+cprXgmrtXcW+3XPktUTE0GZi7goiYu9WOv
	 lC85NEKJ0D+NZbUOaYMbWk0KvOXha0P0wDnxWn6gAQBY8xRFnqAuWhVxgVU5wRoQhM
	 tpbTalqy/pTjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA189EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 21:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168798918873.7678.6462693280021741402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9328aadae61067248ec3fd1dfa5792de11e250a29446d36b8097d7f197e0a81
Date: Wed, 28 Jun 2023 21:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687989188
