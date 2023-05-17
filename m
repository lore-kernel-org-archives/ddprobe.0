Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516DF4420
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 18:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D77C433D2
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 18:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684349105;
	bh=0iwsymMXx5A0UdmyHyMaoMr+47S1lWJSMiT9kXWn0TM=;
	h=To:Subject:From:Date:From;
	b=Oxy/54qgVbZYJ+mREVYVU1mDkKUgbE733JldYt255s3LJ5uFEtHNHH8yUr+BHVmIq
	 9qG06dqp7jj0MGlwdnBJ0Zuzq4chQpz4v3Na4aPvVCWVFoMrQnuNFdSsLbD4IEYBFd
	 kUHwGmGtSqbi3fEHQfJ/9GyDUqGwIxUmU3XjAvTmr36h+pNVfqtqM5BD+FAhDwI0J8
	 pnQhtXgybW2ccqAxsyk+bfgw1r3zVsXQ79LK1ym3lpaQcX71kQcjLtUCmEY0f3M1mi
	 mtsx7nMamCt2bnapz1+Br0rw74z74bIJN1EQ1EQbQSjzZmJQpq2ukl5W3X0yCWvrbZ
	 PZmusv5wx4Slg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47B9C77B75
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 18:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168434910578.11474.8749368220366214319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9040f5ffe302e8b8e0d7180d24230b5d55f9870a7023cd41203ebe1ac9340757
Date: Wed, 17 May 2023 18:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684349105
