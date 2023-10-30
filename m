Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160901C11
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuQPmlWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F9FC433C7
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698644896;
	bh=Jgdz3Jbi3pLgtEnlHelcJw31lObmzWGuqx7DkGlxliY=;
	h=To:Subject:From:Date:From;
	b=AuQPmlWYR/VoQwq9Oj3cu0snsubQU0GD79pEG6C+IlwBTiLe68G9j6yBg+sgyvXl4
	 cixEOFjHdkhMfS5rtwdQ3Fhxg+i9Q6Csx13fUha2WXjbwCGPqWCHw9p49+MYAVJnz8
	 exp4ujYmGutkRlKN14Q8+J4VXTY5B9n+LAXKTc6hLlN5dJvm3505j2WJnsFdN8lHlI
	 jbudlDwZItVxiUb085/74oaFrBWv1PmAnSzwBvXJughKwEeznC+c6LtLRvt1jZKc3U
	 xmeK5K41ACV+zehD0l39GvuxXseztHU+tk4u7fKUlmq32XUR3y6ER02asRLZa4YZ0Q
	 QrBG+kKCFiJDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62605C4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169864489639.793.4642756962028569728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9bd83394601045400efb85bc8ff523762b486615d35b5dabae0f3c7b30d5e7d
Date: Mon, 30 Oct 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698644896
