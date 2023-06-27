Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA5E1772E
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 14:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07DAC433C9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 14:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687876388;
	bh=70UVMKdnLfjCJPZiS4YbupvR5zKYqh5T9iHyOXeTcqM=;
	h=To:Subject:From:Date:From;
	b=Nl+WZXpExH0wF82l4t9K/uELUApRS8DCrzqhNCSveoPbG2ViQ71atm1fLYrQlCvsd
	 FM4uVfTEeU4meCgusx1mSYjDAkC4+N01ywSmneARCP9CddrsBI8ehcLKt1RQuazc7y
	 QfEy/d1j2befmh2/8KmzNYzTb32Tii8x/HMZNj61be58HOvthVVPWlh/3rIs/dMiUE
	 F5RbgYWScFymwT9Kn6ZlVFWo+wsuUBB8sGY4G+zBqsiUPeHwd+R92IE1P6JazOWY8w
	 KhlVBkWyd5Isea1smE+iEoBgmqP/+LDXQ4mn5UDGVaysWuZmi0CKg5jTVW9qXGtE2Z
	 NyL+qSwegw7bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CDAEB64DD
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 14:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168787638866.5815.9993027511638525193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4969f33fdfaec056382e269905b040be7aca443e9facab4a9eb6030bd5b591f4
Date: Tue, 27 Jun 2023 14:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687876388
