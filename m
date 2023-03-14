Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367812CA6
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 21:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4834C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 21:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678828085;
	bh=Kjc4mpdMZhCPL8GfHtu+b/CwuEq41VsMEjM0zsEsUyc=;
	h=To:Subject:From:Date:From;
	b=jGsu4VjEHN6gpMCvzlczJ/HFOUS817MEqjGeTcgvnPpAm9bbCWv6oWagcvdPCvXOR
	 rt2olhAST+IuYFYsi5StG+DC1+5hnNaua3eGtGbCgsBeGLQq1+eOFd8Jr8i/HZ8zVg
	 6BJO11vd4PtCR0CNlBTZBOhYFrLVbQGOyaXPvCfftF21Ruf/oyHzbAyixHZmN/jaot
	 k99I815kvQEDnE4uB/tC4Ue9T+wyMHTCkHMTqOa0Cw2tcdxMiDaveluqbsRoAtPiF7
	 igzHzijvTncBv8Mq42v7wqtDfOkjg1NfIIDm7oKy5DfWJPLnvDUhup0axX9U4b/0yU
	 +k19CeJnRBVGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB433C7618B
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 21:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167882808575.24351.15153363614086983049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28cdc2f3475170fb69d8b7813d5f9ef4c26c4dfbf3eacfb09ca45611e2d2562c
Date: Tue, 14 Mar 2023 21:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678828085
