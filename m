Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B321D2BF
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 07:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E59ECC433EF
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 07:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684827185;
	bh=eqL+R0OY5OXTwRevwLYc2wUKAUL//5Nx63/owfDp8Ik=;
	h=To:Subject:From:Date:From;
	b=f/DetRCBltGskHx5qEYgZJIBvjWvhV5LPOvOWOou0Dx0cACYcnhgbtbJ9KZF7njjp
	 CHFw/tzHjGNEP0PhzDrUwdmnuoGC6yNK8U+I/TmVd8BKzvljjZfJzJiywxLAeE5T1G
	 0j4f9OPZNIzakBvWywralHJRRaCZNbaVMerOFFyohgmzuvHvT2v8qVrO2uVUin67Ou
	 V6SmAda5v72kpUfY8kUw3rvYiv84oOE4XJu97DSYQPOd+p5OuxT4wkos8ytcJApDNe
	 QjKATZGw720BUBIypZIpclf/NZvP1Y2JZPn7DVfa/KM4y00iUGKcZgZOXt/MH8EbrE
	 utWpm+WdWHnjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8B8EC77B75
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 07:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168482718581.16630.7299174736582860504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1a432b5fa45e4f53622e824c20b05f6e4f7ba0c6efc55cc4fc578d42410c50
Date: Tue, 23 May 2023 07:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684827185
