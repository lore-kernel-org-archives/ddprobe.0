Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D88620
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81B5AC433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668220254;
	bh=1qknP+4w6ZyIeziRMOB7IBHu8dxkKQ/sYo29g6QO3rA=;
	h=To:Subject:From:Date:From;
	b=BjMcOI8T7H3KKRCUAEfoFPxB1kuEBO8P5cqUzr4mvfJ8Y2w/8ky9MX7oPf3UpYpzq
	 hdU7+MQTNN5G9ijBJ7jjlFJKS7a977YcaIUoL5nUTlbfneo7AYPH4oreFJAqi+bbL+
	 dmMd2EHomxeDmIp8JY7FDe/8YE0R6IONEEC8xeqtflzme9htuXTFbWdvjaUwOLK02n
	 UIYHXeL7esjoUEM9ll1s+NOxR0z1P+jMSVXMGsF3ySVLVS0FkEq2sZAVZ1YVguREdm
	 +OAZG8ybSqlkz6z63NyzXYc+gHLqU4RcGvBKPBT4AvlI31NZRaLSFw5rEysxAOTeTw
	 nm/iogPc3brYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66EE1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166822025438.28558.1898848663324692926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d12d95af2407f021a6a42fba334a7ad8afea9aab2cf0e497dc3c6d9a6408e457
Date: Sat, 12 Nov 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668220254
