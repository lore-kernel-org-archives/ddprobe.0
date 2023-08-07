Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5680DD50B
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 11:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E103CC433C7
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 11:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691406788;
	bh=z1RPC77pLH1pJO+k4/i7LizHB7tRzvdX4u9XobIRYY8=;
	h=To:Subject:From:Date:From;
	b=H2YuFjwdfFcJgNnNH4JAXJB/JzJgB0V2bGXC9Vlq2WdkeBanOp4aawwlxjfzKJ+EN
	 mOOuZjnZX1Yo9Y/QMeg6cJ+ac0/JkwAONHuO235GC49v8Z52vI3KhDi8/goG2Fi/Mq
	 RamizjcjJCrW5TXD+0Ul0XAOZNhs8sTyLyD9rDHNrWe3+NPtUJPMfypqo+QAUEmofu
	 s3pEjbZjkjaWzOeekNlLAzj+cC89sQc2gediIsZmtTbRZKUjxo5CJ5RExHaBO4qptB
	 BCfRb4W2h1BE7G0zmXdGrBVrguvzhqqP+Hi5AEd87mHQQmpTm1CqEZyIGvlBw0KwUd
	 qdmGTcNKGwI8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AF5C04FE2
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 11:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169140678878.18875.10709084250203139447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 611aab3422fd46a5e5f01e9e8e5fb24411b91e336eaf1107f2a104bec17d53de
Date: Mon, 07 Aug 2023 11:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691406788
