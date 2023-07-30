Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626DA3D75
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 22:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3271C433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 22:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690756328;
	bh=oN9ZqM/q7Jt9kXWR/+7a3/rTk+ScoAZ9QYC94ymtk7w=;
	h=To:Subject:From:Date:From;
	b=Mkvxd0+s5rK3xatfU4+3E7IGHOr2qO03k+CCL89mF8zgBL9rT908q/T29HanJRX4B
	 vMs5U3V4SB8dDhcVqzgA0QqH85+kLB1DrIHcOtz5Hak6Q4iYz82t0R17367f6maXLf
	 vjS6FVC2v6WDJTeoNrI6KiC19idHrw0gLafXhMMbQT7lse6B8rXZbR5YdjMXAyVIg0
	 lLqiCJ37CIEr0Q9zLM+XktOa1D1PT2pQQ8YU/clqUMW8fx2jJt4P82STSLZLg3n8Mj
	 /+fCzfUxzlh92F7ONa2AlWAa886rOmIQnqo0GHwqVICXjqM++OoDFP/y08yuE0qsis
	 By8FDDdVn92WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A70FDEB64DD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 22:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169075632867.31987.8094523509044760611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7cec2cb7e8adbbe421839aebb7e4c7045f4230ac6c8cc7ef295025029a446a
Date: Sun, 30 Jul 2023 22:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690756328
