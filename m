Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631BF4435
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 21:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4399C433C7
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 21:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691442788;
	bh=RO4o2cgjxGg5HqKV1AL9vnI9DEEJHHVBvWfLZ7ujdic=;
	h=To:Subject:From:Date:From;
	b=qR4/PzOgVxJTytVLNWLxIv+z3+TJYi3v8ADJ3FPbX1UaVLpx6KLrkoTKEzosXF7bx
	 OSseu2eqTlcjXuzRrrFX7V43F4CVlMmdp52ZjQMSdeg985zY6XtnarHYZejfLn6OyA
	 zAW2CVscHlF25iG/KznmLRty8UDx96ssrOIuEUayeDT3bKYu0sZ6OGkqEDRoxlpdkI
	 ANUaC457jKY8M+cDGLkQp3Bq1ap6HJQukASFi77aOoX1fcJ/bXF2ZFikrXmgAE0820
	 9ANQQGzYODzLWtbuQ0oEXD/jrMwbwpivem904dWZ1cfesGIK3tpa0bMPIYppZONE/8
	 vcaETgnZVBzLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B254FC001B0
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 21:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169144278872.9325.2029015461013006704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eb262bb014a4efb17c5933311588ac3bc44ee10a2d382fa05b7eb26a61c2a49
Date: Mon, 07 Aug 2023 21:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691442788
