Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44717EA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 21:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF64FC433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 21:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687728788;
	bh=/WiV++UXOUR0UMTYtlfFL7gfpCYjrc7pVsL3f7XcBoM=;
	h=To:Subject:From:Date:From;
	b=hnVVxoxmgmEltBeFidCcR1NTMNjvPlqMtxNhiR7wc4SZzGSFsvQY3inOWxGYX4eeL
	 JxVmzwZnbnaZ9uJcOB321z7XNtT4TCpwmST0Jj9fBrGIXr1mCgsFJZJuKhZo4xko5j
	 mYOo90felY+vH6bc1lqGm8biVmQHck3xGBKZ53XW/d0tuVIAUuZ9KEpNusrW1WYe6y
	 LxvYiUgV5BnL2lzCXnXIMmPzOzdrqjEPKiYTgeOL4VC0MUSIRnlajVXJZ55z5Dmjqe
	 WpJClHTQ4kHb+POfKkQSP0lHDgbm2+Fk4kbjDp1i1ZBu67eY9MIIf+D5N27g8gXK1c
	 AOogFoQ+VhTOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD91FEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 21:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168772878870.20254.2180307144164028397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd13822f3f3e72cc0ee9e4deee58250823ab6e73fd3661423c07729c795130e3
Date: Sun, 25 Jun 2023 21:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687728788
