Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E4C363
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA38C433D7
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665862253;
	bh=VmqiaVB18C8EAnvTKwVXG2YOvbDkcV2JFcU1IRHg1IQ=;
	h=To:Subject:From:Date:From;
	b=SZnwzDu8VFskQedbydjFSfeSkO4dExcS57zO+kZKgPgqLCZ8I8N2jc5DEW0T5o76J
	 EsDM5e+Bn51/tyg3ksZiEdXY1Vvhe3FuczK6r8oaaZ6/Lq2ulT05QzSjbF4HRMc3oz
	 /lpRV/ANUCv8X6GxjCvRUWABBILj419PzAhf+TQNozuauajBmUkXsu0kjkbJTl00ag
	 yYGcwRy462ELCDfdYq7sF1vqfQgVCf7jEdJq3nRMNttN7HQv6KOOQscUzevBl/o9bK
	 Kh48zOH4/0+1TVSgD19EqjJMSBMTZs95Zsv5CLm7YETUxsnMswCQkgK+7Bwwq9Ls2B
	 nygSxRNeJtc9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53304C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166586225333.8015.11446677896548278705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81446e2d9bec3aa472cc922d4e0c426516c76213fd0ac866f5e7cfc627b4ca40
Date: Sat, 15 Oct 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665862253
