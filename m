Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E26DE8F6F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A882C433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670529687;
	bh=Mj1Qydn2eqbqh0xHj9ULwZ2kSUOPPxEyviD5Ditczug=;
	h=To:Subject:From:Date:From;
	b=a8IHTz9fpwfRdFjsFsuxuhVtcKZyYiytgJsyFdPtYZgBD9Uc+m2Xjn1HVD/fQTCUB
	 6sNos/b5H6xpF8D3YpK5fjpqI7Y7u8GPC0x3uv1svC8MOIBNt/CizlkcjOXtfvPeKQ
	 bx9y/yuyznfgnacpLsnFCZZ8bcoJ1GZHTJhk0qYybwsxjjWOmpDARfB52lAIYzqGSs
	 aa8hCA11xaBnKt27EdvAgS8dmzHBxV0uRYxilJCNXP3OW7rUJEWQVjMtz/H8zO6stp
	 a8hCv5Odm5UvP1T6FOx6AIdEE+oJ8cqyD0vdJZEMIm9VPPY82iWVWkqrLx9KGtqbMz
	 DwRUc+bHkZqXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CC8AC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167052968743.8694.6648994864986301769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d55ad1764ef86f78752231ea07803e8fe59ce505402e9e8ffc5db60f438b56f7
Date: Thu, 08 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670529687
