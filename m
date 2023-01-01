Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5F415C1
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82E27C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672543287;
	bh=mlpSLP70dRS5sFM0uEjVHzAwCi5SMKtcd9V0EjfRLRQ=;
	h=To:Subject:From:Date:From;
	b=fXZuqf8oUKGeGL2eOC7/ZQG7KxjRKVGBOr3CtC9GMylsSu6w/bY+S2jvXptssywmV
	 oVt+YnBHiGTzfpsJrY207WJ+02pmZvmwGD95QqUvy7fmJCBxVMUE3Z7/objOagXI70
	 lozT5+sk62dWk8gG+ru0qb+BiCXfu0s8Rt7WgtekCE1P3RyNQU6ZmwjPloebYGlaem
	 fh8m/AallSW3Ce5t5cWFc7MA3yr54LPC+mdC2WE0Doaul9rsX0ySRpSK39+zwHiCdP
	 AaTZc1fHbcxKet+cO1Qb9DyEettmzA8g4KCVxlXzLB5pRqZElDmHF+IkG+zUNF8Lcd
	 8QhnG6Q8QukZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B6CC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167254328738.26901.12275503778627678098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26937f3ebc12a45d42c5419100be1c10ac81482717cd0d3643aeab01a4446bb
Date: Sun, 01 Jan 2023 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672543287
