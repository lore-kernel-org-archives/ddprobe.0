Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2975698
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 14:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E550C433EF
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 14:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681309326;
	bh=kKqcAxM25r4kKJpBFZwwaL0BFqBISdXtoc9GvwMSiFI=;
	h=To:Subject:From:Date:From;
	b=PBRT4KMgQCYOZ0k2Snovk5by/xpqZH0Tv8wMisJ0vFJWDzr1+yIwN8JU8Z9/DOBte
	 k+iybyRwazlo9FIZuXhbccmjOR0Ei73NvVWHnCa9REBsCAl80/KvpBcpXSylWDCkZX
	 n0tRRvQVRyZMYO8c2PXMobPTu3qTKIPwiuiWxNeLknmXojyAbgRj9UEyJX5tJ5s64p
	 nBAyLZIW8fVUK/mKfHA1y8y3rDT+4ITLsbE1ud52T4LW8BxE5nZUKImdPjf4xdIt8B
	 kPxMfOFJm4QTbfGmPblUAlNDEhtDp5I6DBlGBgIiV81/AJ2sB2sDa3S9+CqUUuTdNL
	 F6rOWTIffKKUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA390C77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 14:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168130932594.28689.11996182034466025699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d2ea82e94492ff65df9abb9b2d2164f26a31913d31f82c943144192554a0ceb
Date: Wed, 12 Apr 2023 14:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681309325
