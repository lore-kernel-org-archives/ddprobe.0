Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D58D4361
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88E26C433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673512287;
	bh=Hs1VMR9bniTzjovJuSKbHwHz5DhbN9woM/jyV3gu83E=;
	h=To:Subject:From:Date:From;
	b=dmtzmCm825Y8QnEnBybnqG8Am2Mu/YZX2VhyWCmB9bSF0xvWQzxzDroTgMKRa0Okx
	 Z+u6dXjcVDwQdoq+ipbsV/4XnwNJyNBbqlrleXywqTjDTs1duKrYhINjuOHrfetx4N
	 b6nwze5yHrDPnw/AV0nXETKDPmUYxBnONb1Q3HN54+og/OpVxabPrRQokM/3oekm0U
	 VmzZZLfOuBz2HHqrr9svzhaswKAY5x9hlR6/5LH7ECcqGhYuD5LcKKtCXkfMJAB4iF
	 VKENn2IH/g7h9rVMNluZUKHl1Rl2e9KJa+qZl9lgQISxEtmk7OUMNgznCp38d9ZNaD
	 ywpGwrvYNKUCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62579C54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167351228739.19798.17654234658583659126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5e1dd6e7aab35b59308bfe67d8b798df8c4b8e438de0036bf2b0a0d71203e8
Date: Thu, 12 Jan 2023 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673512287
