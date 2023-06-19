Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691EC18AFA
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 12:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF679C433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 12:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687177928;
	bh=4RX9cIek+UsU7EyY2yvv6QerKRs46E6XY3NfkcZlQb8=;
	h=To:Subject:From:Date:From;
	b=TqbItUKrTpQ4sLMId7V+rdswfJj8oajQO7MRMYcDqF0tu0BRywJxOIyhZeK777n/h
	 OXMV+PG+Z1xO0FFU0PZSIlycjN6lZmQlZcWVnt49Wvpm3IRQ3kdLSr43Q3QB7DjYkf
	 5gSkTpNiLBt0mIKIocBPywLSBuuXUARMrrpubKg+uNUg33SJKGJE9a5Hau77rN8Q0y
	 DvwyOvWtE2OT40J2oiai6niUOiHXn15OeGUJ0/W4hu1VB1SUgt07UuEhskedjN4D/o
	 bXJ9Xn4XnK4i9zbkXpKOjwu06OyS+Lm8dh12cIc5iWNVKTlPtGUZON6y/fMHWDmprx
	 rSjJUVVembh3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4117EB64DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 12:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168717792872.11150.12933835128529539403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932a684af2dc13e86830e6e181401e83823a10a9edfe428f967353bf9ece1a3c
Date: Mon, 19 Jun 2023 12:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687177928
