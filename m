Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B33D6AAE
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 22:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB357C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 22:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679869325;
	bh=CBuaEeIDcb8eHY4bjWhyOsu0P4iFYZj4bzBbF6usMfs=;
	h=To:Subject:From:Date:From;
	b=l9cwxjqdWDJQcOfOkm98dJTescUKxi7g6BBYr9PYQcHfy2Irm0UUVw4k7ZG7MinX4
	 xMNp6uJbG3rC/WeV0DX9Kdc0jsnel79r0U88XdbNftuBg5mNBihFO9SbpDPQKcLUhJ
	 BTIgzJnHF35RhHVv5IawL2pAz8+kNH/KZolL8XBOSQQhiJ3TPFu3ndPwIwg95NH97N
	 Qvjn4Kz1sybbqTe6BQH+uvO3qc9cycQQymKAN6q4ZNG0cPJGskP7S8SuRqVOxA+D9A
	 Ka7iLVxHbvrxKrHBf/Hu6FpUSc+BxFjDDRr8q87YT8tA3EwphIhLA8GfQ6PLu6mINK
	 purw6Tf9F3OXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B48C74A5B
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 22:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167986932574.9785.15856496927773705759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22e3f6f018a6b504356f64d86c009e656c9fd27f18e51acf5a9990e20ea1cbe6
Date: Sun, 26 Mar 2023 22:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679869325
