Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB07028E3
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 677DAC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662591053;
	bh=o74/gwmO4lzMwckSvBiMkKFPzgWWsgAX7Y4DF1j0dlE=;
	h=To:Subject:From:Date:From;
	b=hjoocUhgKrpkZXid1PXJUw8HogX5BAJmufb/d71DRZQnQj9bcKE2WdLnLGy1Rt9Ys
	 Wy/F4j1EJgEAeSF0b9voX2oGYe4baw+1MdjPnCrXRJtsNyu/d93hfePnNzF1jk1Xkg
	 4dgXC2D5RVA53vcUQz5MPPTNT29Y/5f4kg05jwI7/+4+d9Qobu5bWhIxNQ5Mtn/2hI
	 YPmz+6WxzsGzI6ZdOHEJYeKFXM6SL4i0LFHMGe3i7JTZzHWxzDLpVnTBvtIIRfIWHP
	 PADgb/ZHQT6zXaUXikWzxpLKWJJFXtfnq6Jew8Z7NOMRD+SO+BN2MC1bw/jo2R/mmv
	 rG4s/6O358T/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50549C54EE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166259105332.2490.9427632770366086646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2f3a31b5de93f9c7696dcaff63aafbb5edfc9864b0df0eeec8f2f18bb6c825
Date: Wed, 07 Sep 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662591053
