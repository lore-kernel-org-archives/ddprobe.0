Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132162596
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 15:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2197C4339B
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 15:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674400925;
	bh=pDd3WyKViXFwsoI9l7wMXu2Y3kmvmCuLh4W542ZQH3s=;
	h=To:Subject:From:Date:From;
	b=ZGi8WVxvU1VuacM7be2FW5ftTUF6MH3B1rMYkH9+3r4V0drpa0Er+MClZNmjNjYFK
	 R/yS/rPSKpWYPW/oQTk+Ms8nTujO8wYo8WVPjpKPnOY66+M5SxP75WBiputrBNIS1C
	 5nl6l3H27ipaIFe/bI/nhWknc8CQ7rMkjSJnu4c1tg3nbrhx4C60ojNmJ0voajAIyc
	 lDjX0mV8byg1Ovgw0iq0ajcJIRkSQMn8XZWRZ1+rp1A5DrnAxl34DAss+jOr3ZbPCe
	 SKGWniCgBtT6u0mljeOACYzaMYsy5mvMx1GhFlQ08Cu8xXIUvWk2ukQZASogbxTA5z
	 0/QhzzG2Haf2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B666EC27C76
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 15:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167440092573.11902.12335261351489289745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd95ae63e482c8ec162d08605fa79ce9c467d4ccafa684b3742ac9073b8c7f0
Date: Sun, 22 Jan 2023 15:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674400925
