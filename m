Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD3944462
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 20:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B27C433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 20:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695413108;
	bh=ud+BL/KVtTmttgJvP07UP4zoxhaZrdazgEVx+Wcpbv8=;
	h=To:Subject:From:Date:From;
	b=sffumbFncucua5QtTQSXPOPK0SEvQxdq9QzK4JYrA6xXv0+7krpZ9WAvm2nQJXuYA
	 7mUVceuX5d4j5safhkq/M7t+wllJkqpCKeJFF4/j7KbdT+7K9Uno9ZwLky91KvMvPb
	 /mKdnmJUsiG6ToJ9EebnQ2UEWVpKtUyKk/ODGcWhK+oIndr8oYsL0/K1JsdSeEzlv5
	 KI1Ul+PckbeVxXMmY5bNjhgWJqWZT6qfZOtrgwdCmGK6NKadzSByFtIRSYxBIYiKmM
	 eo1BY+kYDbv276sStlWO2y3fAJs7r1STObYH7cLTo1iu9Yy9nUYh6nDWqkXlLrH5j4
	 7uLlgVugw4Rsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FC3CE7A86
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 20:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169541310868.29708.12633957275860631273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e222a12d8c24869a85a86f02fefd54a562819e0179c4c25f0757a83b821aba
Date: Fri, 22 Sep 2023 20:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695413108
