Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6CC1746D
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF37C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663623653;
	bh=LSmicTYD7FzsG/GG9QX926R29GCv0r9ashF08RgMvfc=;
	h=To:Subject:From:Date:From;
	b=RR1komGHU75JVPuKeRCmI2QJ8NGpNfIPn9lpEdMvuy9zx1Ft2YujLAax2PYfDr+D8
	 xeGwEsIFjdSulABiXj3oOR5PSxm6JOmF9Zg2GVFccB4l+vgPsyrPPaqU7Rxb3rpvq3
	 teMCzT3HJDwrEe6tKkAI4sISVvTp894GSz70Ai5cmHaTWXHTjGN1AqO4hDC8EwE5jP
	 Q4ctRrHCRCF3Le3RbMHUkUpAVmpEtU7gz0oKXZQrIHK/0gl9jsbQiNApmAaQ/0hh14
	 IVmxfxe5+dhtzcvR/sJBxX+VAcK44KJZcfli7+eS73w3Zdc13fTM5X6lyfKhhDDSQz
	 rB9Y8HROiGd6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59FD6ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166362365335.20561.2728515403608888535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a457c38a1e96ae0951b5fa43d89094e1982f9239c2136bd5a14d51fd5e88b1
Date: Mon, 19 Sep 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663623653
