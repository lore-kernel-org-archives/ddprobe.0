Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FAF2103
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 679D6C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664374853;
	bh=BD7jptohVWcmvV8GBrr0Xj7D0VrljTOD7c9nuOr20JE=;
	h=To:Subject:From:Date:From;
	b=MfxG/qjnbk7u92LdCuC3pghTZfobM+bwKCMbwML+LKtgjLjoTLVb6ZnIbmeHXVOpR
	 Pv4vhn0+tFlvY/6Pf09aamIgKEK0zQvyDQ7kKbyukQfbnCnXu+9MNKkLhBxHFfzg/w
	 kDmlS94aBi/Ug/czZXb1C+vyZ6brjukQd99mYubUohcZ9MDu3blDDqpJut6IFTuN7w
	 Uqu4Al57suIYnxY6Xs11GdkG3nXaIT3s9bfYCnxMGZGQHHHG4oa6xYTYRU3d1GW35s
	 vMwZlUY0oJ70HZR8UdirDHC5GChPJcvIyiEKS+TqjGbI69Q9udbTC/8x5JyYEkwYW1
	 AgWDtMOk3c+Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F894C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166437485331.4718.15761444524276036229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1740655ee5a915e1583c6fc3a4a3f68638fddd48a08dfd1568c59bd1d64bab19
Date: Wed, 28 Sep 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664374853
