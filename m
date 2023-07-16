Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9E315A0
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 04:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F50C433C7
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 04:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689480068;
	bh=0kzmdLY/gy+qpUrhqgUQ3Nl+NvrBmva1xLwpOYWFseA=;
	h=To:Subject:From:Date:From;
	b=VzLqlj8Vkb71jJEf14Gg9dEhLpZcTjWZNnsnfNa5qB2+fV8j5GApY1hG41/LMgVXa
	 bPgNgWCNFeXkcKrbTeRfeA3bw5QyFqBxuKi5eQXILrwSDjXQ2HJMA1HX759ctRbCZT
	 JXxg56TTY4fMCX7q9nCL0N9wmAsDDDBpgdE7wyCZ5uXlnb15KjrRTsfwgIPr+uu72q
	 f5/Ey9L49KmJRhXiumEEN6+96nRSjWG84dgjx+e98dwJ7GfPlIOH0NQlweniNaTplQ
	 ACQP8iusStsww9lXR9bRYp+tHqRbPOShomm0ItOnWLkbP0UGhvGjG05oRlACG1TV35
	 NeGFq4MwuCu6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3920EB64DA
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 04:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168948006871.16193.6524035250996160477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e60db6060e11563eea5e9b2ce6338970f7d852b3cb0cbefa315f79396d4df3
Date: Sun, 16 Jul 2023 04:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689480068
