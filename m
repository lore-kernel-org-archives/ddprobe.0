Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F8836A
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FBCFC433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661827252;
	bh=KIK7BXoFFGMG6J/aQucZaDwnAK886/ucZvPspScZb/s=;
	h=To:Subject:From:Date:From;
	b=cT8j8pHlijq+DDxBA6SzCJoJId44EJ87WY61Ta6+1vCI/PxLPy+sVj+COd3ylF47n
	 CgcCkkV5Q2UFRC9P6Rm8jzcdHFOv+BHdxUIamNunCsE6lBPRGTMOYDW+QSO1U4wNVr
	 XiReg3J40I8Qko7wGM1FYTEvHgF7ip0UpXdmcst6mHCouQxjGDPm/dB3qFcO/jLS3p
	 fzToX9Qcb8RmIc4dp2jn6sC5aEzeu44IRi7lrNrwrrXqPVcjs25PULwUBp2g/x6L8W
	 nWgPcdeOQ0MwLo6IQ2PYbAVSXDZoaURX12JrX/hCQVNe7yeY9o0fsgARcA+oZHRzJW
	 RIqhEGRdN+m5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537C5ECAAD3
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166182725233.18719.15781423351612812841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d707b1cf309e2c6afe34acae2fe0eef53a0669669ec73672f55f861ead3878
Date: Tue, 30 Aug 2022 02:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661827252
