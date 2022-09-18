Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D741D648
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D3C3C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663480853;
	bh=h7EZSFyl1WvIPbD+ZwP0gfMdDaauIvJZj6zGV+zLfDE=;
	h=To:Subject:From:Date:From;
	b=f/nUZeoDOs70U53hDfaE1TVlc3I01ypUWJOhs2+TUmGPUNr7rMLYQ34A/OM0oGLcu
	 +6iiMKXP8BAZ8wqua5lzZA85WdW1uJ7McQqiRjCxAAQuN0I09UBspeqEyhvtKtxEu8
	 LkqEZne9tYm92dCAZmiF4lDZkw6l4NATbH/ymu4l9Y+qtv6tYB6GXLvxVLq1b80JE6
	 Yc4GPy+BEU4pNGWPriGkgm0jV6mT3AQrfSv3GDG08K+mpTpAl39C/X63nG4kQUCAIl
	 x4wZgHNWsg+lZVOWnnh451pebhnw/CP8dl5gODYbUJW47xOp3iqhwQ1t5tXRugexe1
	 9hTn3KhjwuQNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD46C32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166348085333.29040.15713022075251054635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0af9651e4b9805c1b0046d7a75ad9199deafa0353717c10056befc5ab9e93b67
Date: Sun, 18 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663480853
