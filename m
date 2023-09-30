Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9AD2106
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 17:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33C0C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 17:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696096568;
	bh=Zz2Wnx99CU1jQwVsjLt+eowc5gCZ99UwVqfsqCAdOT0=;
	h=To:Subject:From:Date:From;
	b=IgK9UkdeRHz3ok+yYpbtQqIfCb1YEjuvyywGFGIPxocmpXqAAVicELDB0jMRMLeJT
	 E5QJo/BLdgivfMIIFiFZMkmAACiZ3MSyBRFk2HRw1ILGU+xuuyyHoW5UFfD178EaF4
	 02dvXnF0DcP3fKHe/442mZOrHXcKYpS+ccNC4XgzMR60fxlhAre7f1Hik3fsHnfowx
	 ejHx5nnqluZQJnvi6Z2UUdn36tFg7Y1s1c22o62MPcBoBamsLW0tl2r4Wd3SgBEt2r
	 Ga66uNvLVvZzsD7rX2YX9g7veOSQobt0KujwPbcnas59tVozgJc/nAy8dvTjXaWy0H
	 SLZx33CBDDCeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0525E7737D
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 17:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169609656871.27885.15888340746947697486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad4ca8920f5dec352db0970ae00ae02787cb84a397c329b51b4056c8b11cfd05
Date: Sat, 30 Sep 2023 17:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696096568
