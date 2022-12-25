Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99AD36D
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 819F0C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671943887;
	bh=SMw5ao7KJplLns8ATBlPFs1I8WM5ZJCL6DnC2x1yHD0=;
	h=To:Subject:From:Date:From;
	b=pIzVvzHil09mhQblRHhiFRrMnGEHz5adUYq2RdHKGQYtydOrWs/tc4VcwsdzU0zhb
	 S5Ac+0zHhKgIBlfHT06vLsyS7LDxhCYs+w6kSHcD0bcW1sYpXqnCEJDjUtY7C7XiNl
	 w0OuKZxJaaPfnA3I1ktaWvRMjLq5n4oaJJuEGXu/7OCmnPGTcSR/+yOXFlucysDunh
	 P5AjNtLRj2T+nWRbuJmBZ2YJHwqDgT75ysaXN5RTpBWZhF09bvt+819DZkxqcGA+iA
	 PhQLTYHbKstS+2WcK5eRoAKrzYlLCYAacT31i8MvjJrdabqwOdLzWN7XCKYavB7gp3
	 6DUbdJJhHPsUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66453C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167194388738.10660.9809124732392848768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd321f80a0d8dfaa59ea3df4669a33b508c1857015319ccdb114fd8db4ed94b
Date: Sun, 25 Dec 2022 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671943887
