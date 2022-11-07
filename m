Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA716D531
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8552AC433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667836854;
	bh=Vp/VE7Q99DZ9otjecalq89OqatShOM4lT9KmiOk83LI=;
	h=To:Subject:From:Date:From;
	b=iIp5PYZf3Wr6Z4yc9sx6S/G8eGv6WuSBzIVlO39UPVl0zqheQ+/9BvQan3rhpGjrb
	 yuXhimD1vojWapFxHdVwSX0XoRzsKgDlagH+JDAShAbBT074OwxilyLc/GP2iEEsuL
	 XrkJjqFw8/N1nTLL9QR7wrnRnRvH/bQYHxfcabrIqOHKdyKL+xHiZBMw2fT6rzsaYF
	 g8o7b6BqMgTl0dclf0jJgIIQahmAB+e2ifgwFRhV0PsL6rhePhBrosZsXje/Kwb0th
	 lcsjCTdyqSdMSsw+JiozL07VDmeWSswY0y9blAmk7a6C23jLZN+o+twT5B0IjA7//p
	 x1hHNl5ayRERA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E649C43217
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166783685437.8913.9211166845488514678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da1cbbe958519a44d2b3ddc55589036178e45162ec14c68f985b45a8cfd030c
Date: Mon, 07 Nov 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667836854
