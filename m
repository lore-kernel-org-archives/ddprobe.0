Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9F92582
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 12:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF5A1C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 12:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676119446;
	bh=PGjKFBLydztpORc2DHKvwynF5mNNg5JMC2YVmrG1eCQ=;
	h=To:Subject:From:Date:From;
	b=JVNb+ujUzilEBXP0w2ubTw/iG3l/qp183dnefGN44iJgWJFxsNXqqjImMOiUm1sOg
	 AWjZL9ffABUefYuLqrPH4rt1VRcq7YqsWzahsWXr+9i2/U/2eBNQggYPLCdBzle2Mx
	 YOpWu0vQvbiNyWB+4QmzMqujmFk8IYC0M+1hj+M0LheuFbGrI6b2eUeVMr8ZlLtsAw
	 J7RW/rU4QMePWd8HrD6CqesHp7IO70nTnmcuGXQoU3ttp72yK2CV8JcFKorsbxJ9oj
	 SU7GOL4miMaiL8U7KtfjbuGJE0K2RpWmRconKs8YluoP+FZFSqGuVRqDJ3hReQwWTu
	 6vk/Y9AkSsPzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4060C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 12:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167611944586.22654.1966807836092068752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61b5c903f43cb51a0346ad6e35ded2ccd98cf2a0bd0b70bc34093c09b4155de3
Date: Sat, 11 Feb 2023 12:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676119445
