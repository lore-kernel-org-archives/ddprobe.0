Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3477186A
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B14C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666871454;
	bh=FkkTa988x6NYivUcfhR/zZOTu+NkNmr9Z73ilKj/2S4=;
	h=To:Subject:From:Date:From;
	b=GsTKlMqQ8ltdJkMyOp6xTc3hZZ+5itXhlmu4WBeM6J3Xcbk6Uo/zB63lw1vtSrhJt
	 XYMwvCpZsLNrfG9c24uzpYN0uAFSYTrEpWTw8Ygf7r83pDYPfNpd5cPhEFriNsyYbw
	 AdhRH0qFuX12pM8/b4BSI4AIvh+hkNvGibL0bR3/Iz5pmxs85axajJVwxB1546vQf4
	 hrSk8hPiQ4UD8U9+f83J7HJMiPvbPcZZPuipUME/PbW9+Jo0lbxy0KMA+J+VMI3xnh
	 vJoYhjYimOBdab/FkTcfVvfbt+WQtUxQ5FlqWe+6SAQAKWz7TPFkjXfpEnPR7L9Fxi
	 jMIjiIj4XgfZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B6A6FA3742
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166687145436.9719.16582590218450651144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ceb4d182df3d0d54cba4ed202855c719beac0b39b8cb0eede556a4d5ec94674
Date: Thu, 27 Oct 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666871454
