Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DC07E
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 02:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBA5EC433EF
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 02:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683080826;
	bh=CGEciHR9MwpQlmNt/NZ5unxijy1BSY5P44NEoNtfGrs=;
	h=To:Subject:From:Date:From;
	b=gaDTWtxzxbtrSlXVU5SIvgBb1XZkaekKTpRPhU6BIYDF2empFEb0/R+zJm6aZ72VJ
	 OaTDLK0iUUk2tXDbnX07oYtZaN/vkHdSVa4/fXYSbF0/cHXXXXpY3AVin3gDO4Ta+q
	 ZsvMlRGtzitGjydNle+Vu5pMENif0rM+5n5SYquMDKPp09NNTmRO9kaqrd2htWmFkC
	 D5VXrd6mTAYfXqLq1ABfMLeEF2nvqrXolKca08VoxAdZ3tXdiGV/mHr8b6RqaXopPF
	 BcPLQWDthoUc40ciQcCSZ1+7iJkqHhicA0DR8hR+s4QgAAR1pul4b4fXT1S59AoPw0
	 Zzl9xiN7IYu3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C80C7EE21
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 02:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168308082579.25370.778363268417680210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c038e56d469b5e5207cfab44eac06ad576e94ffe893e85a266409fd8297df5c
Date: Wed, 03 May 2023 02:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683080825
