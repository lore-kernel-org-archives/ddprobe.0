Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FFB03C0B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 09:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B2EC433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 09:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674899585;
	bh=KWj9POedHjW3oO6APmKVOvuvQjHikvezcMqRIO2QVwU=;
	h=To:Subject:From:Date:From;
	b=aCK4qd1WG/ga0O8pXyzi8PVOtMnA9MV8POblEaBsMXBZPKRAsD2IL62CsJXFRa97p
	 dIt5tjLh7TWmVgY19sNc8WspoEWbUGmPz65MCnBKk+DNuR1uJfYl0OenpRA6mBMsXh
	 wq8PE9j/MY7O8n/OaJts8mU246ndJ6bREZlhZ/9N2lD+gJt1GT8UYvPO88gxMl4PSi
	 NvpNcQN/WRIPzCEj5IHmrHxiC6GyF+T+BXQGxXemt76Smd126/OmtZf0ejfLJO80jZ
	 lw/oyl+AA9f5qRrgJCzk3nwM+SIkDWJAqMr9YS7AXfus4wh2p0/ruDx2AsskuN0Fqb
	 J0alt2HLPvrFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C547CC27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 09:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167489958577.25132.1987979622487932678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b52d9f121838ccabbeaddf6fe938a6e8820beab9a4a4d5cafe50fd359214dc3
Date: Sat, 28 Jan 2023 09:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674899585
