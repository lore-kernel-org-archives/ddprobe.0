Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E10E01ADC8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 22:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65A24C433C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 22:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692309789;
	bh=gZDuH24kuIT4hjMYjflQTTtZn0QyfttyApUmNCysvL4=;
	h=To:Subject:From:Date:From;
	b=tHJdcAFtFPKj/3t7y5B32jX1u3qLB5pzvXH0TJ2DOaP1n/jb55ARkYesKs0rexC8W
	 mSSu74k24zs25zBTrXEr9V72nfKLp3lYW2QBNdarb8SmWOKNu4w7jtm1M6kcZ+6WnK
	 1ePhRPmHPj2/Uh0N08GTNDiZVBrWq3u0x51oIyvwwRMAP37d7IyvBWMOGoAg//G+69
	 0pjF+DEQ2SSPl0sMbvR3oMnZjEEQwhXOuxg9H0ByhEr8zrUblhezRMEocM3xC2hOI/
	 WlBW8dV+KteO3DRgZKlLrhKsU4ouhifAv8ERmA7qfuRfQLPaoh3rve9v1gdvp2JgWM
	 nQFAWomU4SBCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C115C678DF
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 22:03:09 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169230978905.14751.17299421495953701675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cebd21d85a701bcdba20629e3684ca0d805c77768a6a9900894f961d3a9d3cf
Date: Thu, 17 Aug 2023 22:03:09 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692309789
