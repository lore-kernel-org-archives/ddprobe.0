Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F53B27F12
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 22:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D717EC433C9
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 22:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689977528;
	bh=TicGRab1sZWervfeR6aAYNx1FzlLR4o4Z0aBglvlpR8=;
	h=To:Subject:From:Date:From;
	b=YR8xbUBc4djk2bQ4l2A0zZl+Cqufq1OW0rlXwwO5G0ayX7lEkJkHTCiu7mRDcOmKW
	 zQNVELBTsDFpfEdzn08K4PqbFZOWtdxuRdqiVLZQrZNi3lEFTDKK4wGlYKS/461hYj
	 iCwgcBdpUH+5A0bmb1D5tKjrTfD8vfvPxTSXYsHDLVrnB0odtx+VrviiMOxyUSEDtY
	 JNg++cq5/5Tf0eLTrVPdMGofWY1SapOnxeFE+RQ0HCFJtTWJQ95XJ1R4gqzHHF5dzd
	 +yuKj3JOibOP0JkEqABoXLYXuVzDue0MSNKaoqEUpcORTi5Om5F2ZwUaGNSLAOYAik
	 dn8r2hjFxo55w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E16EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 22:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168997752871.10800.8181344272064659994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ab08a8dd90b6c2585580cb71a373c2eb0f801d72276c34ab3894291de4300e
Date: Fri, 21 Jul 2023 22:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689977528
